var mysql = require("mysql");
var inquirer = require("inquirer");
require('dotenv').config();

var product = "";
var quantity = 0;

var connection = mysql.createConnection({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME
});

connection.connect(function (err) {
    if (err) throw err;
    runSearchPrompt();
});

function runSearchPrompt() {
    inquirer
        .prompt({
            name: "department",
            type: "list",
            message: "What department would you like see products from?",
            choices: [
                "Produce",
                "Dairy",
                "Refrigerated",
                "Frozen",
                "Drinks",
                "Exit"
            ]
        })
        .then(function (answer) {
            displayProduct(answer.department);
        });
}

function displayProduct(department) {
    var query = "SELECT item_id,product_name,department_name,price,stock_quantity FROM products WHERE department = " + department;
    connection.query(query, function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(
                "Purchase ID: " +
                res[i].item_id +
                " || Product: " +
                res[i].product_name +
                " || Price: " +
                res[i].price +
                " || Stock: " +
                res[i].stock_quantity
            );
        }
        purchaseProduct();
    });
}

function purchaseProduct() {
    inquirer
        .prompt({
            name: "purchase",
            type: "input",
            message: "Please enter the Purchase ID for the item you would like to buy"
        })
        .then(answers => {
            var product = answers.purchase;
        })
    inquirer
        .prompt({
            name: "quantity",
            type: "input",
            message: "How many of that product would you like to buy?"
        })
        .then(answers => {
            var quantity = answers.quantity;
            transaction();
        })

;}

function transaction() {
var query = "UPDATE products SET quantity = quantity - ? WHERE ?";
connection.query(query, { quantity: quantity, item_id: product}, function(err, res) {
    if (err) throw err;
    console.log(res);
}) 
};