const inquirer = require ("inquirer") 
const mysql = require ("mysql")

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "b@ronthed0g",
    database: "employees_DB"
  });

connection.connect(function(err) {
    if (err) throw err;
    runSearch();
  });

function runSearch() {
    inquirer
      .prompt({
        name: "action",
        type: "rawlist",
        message: "What would you like to do?",
        choices: [
          "Find employee by name",
          "View all Employees",
          "Find data within a specific range",
          "Search for a specific song",
          "Find artists with a top song and top album in the same year"
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
        case "Find Employee by name":
          nameSearch();
          break;
  
        case "View All Employees":
          viewAll();
          break;
  
        case "View All Employees by department":
          departmentSearch();
          break;
  
        case "View All Employees by Manager":
          songSearch();
          break;
  
        case "Add an Employee":
          addEmployee();
          break;
        }
      });
  }

  function addEmployee(){
      
  }