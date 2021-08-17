/* bootstrap.js */

const express = require("express");
var path      = require('path');

// Routes
var guestRouter = require('../routes/guest.routes');
var usersRouter = require('../routes/users.routes');
//var adminRouter = require('./routes/admin.routes');

const secure          = require("../util/Secure.js");

module.exports = function(app, router){
	function auth(req, res, next) {
		let id = secure.authorize(req, res, next);
		if (id > 0) {
			res.locals = {
				auth: true
			}
		} else {
			res.locals = {
				auth: false
			}			
		}
		next();
	}
	
	app.use(express.json());
    app.use(express.urlencoded({ extended: true }));

	app.engine('.html', require('ejs').__express);
	app.set('views', path.join(__dirname, '../views'));
	app.set('partials', path.join(__dirname, '../views/partials'));
	app.set('view engine', 'html');	
	
	app.use(express.static(__dirname + '../../public'));
	
	app.use(auth); 

    app.use('/', guestRouter);
    app.use('/users', usersRouter);
    //app.use('/admin', adminRouter); 
};