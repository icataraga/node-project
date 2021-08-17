const HttpException = require('../util/HttpException');
var formidable      = require('formidable');
const users         = require("../models/Users");
const js            = require('../util/Js');
const secure        = require("../util/Secure.js");
var fs              = require('fs');

var path            = require('path');

class UsersController {

    /**
     * 
     * @param {*} req 
     * @param {*} res 
     * @param {*} next 
     */
    indexAction = async(req, res, next) => {

        var id = secure.authorize(req, res, next);
        let accountData = await users.account(id);  
        //
        res.render('account', {
            title: "My Account",
            account: accountData[0],
            response: '',
            header: "Login to your account",
            style: "css/style.users-login.css",
            partials:{}
        });
    };

    /**
     * 
     * @param {*} req 
     * @param {*} res 
     * @param {*} next 
     */
    loginAction = async (req, res, next) => {

        if(req.method == "POST")
        {
            var data = req.body.login;
            let modelResponse = await users.login(data);   
            if((modelResponse[0] != null) 
                && (Object.keys(modelResponse[0]).length == 3) 
                && (modelResponse[0].email == data.email)
            ){
                var d = new Date();
                var t = d.getTime();
                var i = modelResponse[0].id;
                           
                var session = secure.session(i, t);                

                res.setHeader('Set-Cookie', secure.cookieStr("__xxx", session, 2));
                res.setHeader('Content-Type', 'text/plain');
                res.redirect('/users/account');
            }
            else
            {
                res.render('login', {
                   title: "Login",
                   response: 'Error Authorisation',
                   header: "Login to your account",
                   style: "css/style.users-login.css",
                   partials:{}
                });
            }            
            res.end();
        }
        else
        {
            res.render('login', {
                title: "Login",
                response: '',
                header: "Login to your account",
                style: "css/style.users-login.css",
                partials:{}
            });
        }       
    }; 

    logoutAction = async (req, res, next) => {
        res.clearCookie("__xxx");
        res.redirect('/');
        res.end();
    }

    /**
     * 
     * @param {*} req 
     * @param {*} res 
     * @param {*} next 
     */
    registerAction = async (req, res, next) => {

      if(req.method == "POST")
      {
        var form = new formidable.IncomingForm({ multiples: true });
        form.parse(req, function (err, fields, files) {
            
            var jsonData = js.formInputArrayToJson(fields);

            var oldpath = files['user[avatar]'].path;

                var uploadsAvatars = "uploads";
                const uploadFolder = path.join(__dirname, '../public/' + uploadsAvatars);
           
                var d = new Date();

                var fullFileName  = files['user[avatar]'].name;
     

                var fileName      = path.parse(fullFileName).name;
                var fileExtension = path.parse(fullFileName).ext;
            

                var imgFile = fileName + '_' + d.getTime() + fileExtension;
                var newpath = uploadFolder + '/' + imgFile;

                jsonData.avatar = uploadsAvatars + '/' + imgFile;

                fs.rename(oldpath, newpath, function (err) {
                    //if (err) throw err;
                    //res.write('File uploaded and moved!');
                    //res.end();                
                 });
                 users.addNewUser(jsonData);
                 res.redirect('/login');
        });
      }
      else
      {
        res.render('register', {
            title: "Register for a new account",
            header: "Login to your accountRegister",
            style: "css/style.users-register.css",
            partials:{}
        });
        res.end();
      }
    };
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new UsersController();