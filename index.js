const inquirer = require ("inquirer") 
const mysql = require ("mysql")
const consoleTable = require('console.table')

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
          "View All Employees by Department ID",
          "View All Employees by Manager",
          "Add Employee",
          "Add Department",
          "Add Role",
          "Exit"
        ]
      })
      .then(function(answer) {
        switch (answer.action) {
        case "Find Employee by name":
          nameSearch();
          break;
  
        case "View All Employees":
          viewEmployee();
          break;
  
        case "View All Employees by Department":
          departmentSearch();
          break;
  
        case "View All Employees by Manager":
          managerSearch();
          break;
  
        case "Add an Employee":
          addEmployee();
          break;
        case "Add a Department":
          addDepartment();
          break;
        case "Exit":
          connection.end();
          break;
        }
      });
  };

  function viewEmployee (){
      connection.query("SELECT * FROM employee", function(err,res){
        if (err) throw err
        console.table(res)
        runSearch();
      })
  }


//   function addEmployee(){
//     inquirer.prompt([
//         {
//            type: "input",
//            message: "What is the Employee's name?",
//            name: "name"  
//         },
//         {
//             type: "input",
//             message: "What is the Employee's id number?",
//             name: "id"  
//          },
//          {
//             type: "input",
//             message: "What is the Employee's Manager's ID?",
//             name:"managerId"   
//         },
//         {
//             type: "input",
//             message: "What is the Employee's Role by ID?"
//         }
//     ]
//     ).then(connection.query())
//         }