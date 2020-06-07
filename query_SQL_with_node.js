// for(i = 0 ; i < 500 ; i++ ) {
// 	console.log('Hello, world!');
// } ;

// for ( var i = 0 ; i < 500 ; i++ ) {
// 	// insert a new user into the database
// }

// IMPORT THE PACKAGES WE HAVE INSTALLED
var faker = require('faker');
var mysql = require('mysql');

// CREATE CONNECTION
var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'join_us'
}) ;

// DEFINE QUERY
// SELECTING DATA
// var query = 'SELECT CURDATE()' ;
// var query = 'SELECT CURTIME() AS \'time\', CURDATE() AS \'date\', NOW() AS \'now\'' ;
// var query = 'SELECT COUNT(*) FROM users;';

// // EXECUTE QUERY
// connection.query(query, function(error, results, fields){
// 	if(error) throw error ;
// 	console.log(results);
// }) ;

// INSERTING DATA
// var query = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")' ;
// connection.query(query, function(error, results, fields){
// 	if(error) throw error ;
// 	console.log(results) ;
// }) ;

// INSERTING DATA TAKE 2

// FIRST, TRY TO FIND THE CURRENT NUMBER OF DB USERS; 'PERSON' NOT NEEDED
// var person, query ;

var query, count ;

query = 'SELECT COUNT(*) AS total FROM users;' ;

// CREATE A JAVASCRIPT OBJECT THAT REPRESENTS A PERSON
// INSERT A SINGLE FAKER USER
// person = {
// 	email: faker.internet.email(),
// 	timestamp_creation: faker.date.past()
// } ; 

// INSERT MULTIPLE USERS
// var data = [
// 	['blah@gmail.com', '2007-05-01 03:51:37'], 
// 	['ugh@gmail.com', '2018-05-10 03:56:38']
// ] ;
// query = 'INSERT INTO users (email, timestamp_creation) VALUES ?' ;


// THEY SYNTAX WE ARE USING IS FROM THE MYSQL PACKAGE > .QUERY METHOD: '.query(sqlString, callback)'
// connection.query(query, [data], callback) ;
connection.query(query, createNecessaryUsers) ;

// INSERT 5 NEW FAKER USERS
// for(var i = 0 ; i < 5 ; i++){
// 	person = {email: faker.internet.email()}
// 	connection.query(query, person, function(error, results, fields){
// 		if(error) throw error ;
// 		console.log(results) ;
// 	}) ;
// } ;

// THE CONNECTION IS STILL OPEN AT THIS POINT, SO CLOSE IT
// connection.end();

// console.log(faker.internet.email());
// console.log(faker.date.past());

// generateAddress();

// function generateAddress(){
// 	console.log(faker.address.streetAddress());
// 	console.log(faker.address.city());
// 	console.log(faker.address.state());
// } ;

// WRITE CALLBACK FUNCTION
function callback (error, results, fields){
	if(error) throw error ;
	console.log(results) ;
} ;

// WRITE CALLBACK FUNCTION
function createNecessaryUsers (error, results, fields){
	if(error) throw error ;
	console.log(results[0].total) ;
	
	// THE RESULT IS GOING TO BE THE NUMBER OF USERS WE ALREADY HAVE IN THE DATABASE.
	count = results[0].total ;
	var array = [] ;
	
	if ( count < 500 ) {
		
		// LET'S MAKE AN ARRAY OF ENOUGH USERS SO THAT THE TOTAL NUMBER OF USERS IN THE DATABASE AFTER INSERT IS 500
		for ( var i = 0 ; i < 500 - count ; i++){
			array.push([faker.internet.email(), faker.date.past()]) ;
		} ;
		
	} else {
		
		console.log ('We already have 500 users.') ;
		
	} ;
	
	console.log(array.length) ;
	
	query = 'INSERT INTO users (email, timestamp_creation) VALUES ?' ;
	
	connection.query(query, [array], callback) ;
	
	// THE CONNECTION IS STILL OPEN AT THIS POINT, SO CLOSE IT
	connection.end();
	
} ;

// CREATE A FUNCTION TO STORE THE RESULT OF THE QUERY FROM THE ASYNCHRONOUS MYSQL CONNECTION
function createUsers(numberOfUsers){
	count = result ;
}