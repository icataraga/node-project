const HttpException = require('../util/HttpException');
const cars          = require("../models/Cars");
const js            = require('../util/Js');

const { EventEmitter } = require("events");
const { modelVariant } = require('../models/Cars');
var formidable      = require('formidable');
const secure        = require("../util/Secure.js");
var path            = require('path');
var fs              = require('fs');

class CarsController {

    indexAction = async(req, res, next) => {
        res.render('index', {
            title: "Index",
            header: "Some users",
            partials:{}
          });
    };

    listAction = async (req, res, next) => {
        let carList = await cars.list();        

        if (!carList.length) {
            throw new HttpException(404, 'Users not found');
        }

        var carsl = [];
        for(var i=0; i<carList.length; i++)
        {
            carsl[i] = {};
            carsl[i].title       = carList[i].title;
            carsl[i].description = carList[i].description;
            carsl[i].img_path    = '/' + carList[i].img_path;
        }
    
        res.render('cars', {
            cars: carsl,            
            title: "Cars",
            header: "Some users",
            style: "css/style.cars.css",
            partials:{}
        });
    }; 

    myListAction = async (req, res, next) => {

        var id = secure.authorize(req, res, next);
        let carList = await cars.myList(id);        

        /*
        if (!carList.length) {
            throw new HttpException(404, 'Cars not found');
        }
        */

        var carsl = [];
        for(var i=0; i<carList.length; i++)
        {
            carsl[i] = {};
            carsl[i].title       = carList[i].title;
            carsl[i].description = carList[i].description;
            carsl[i].img_path    = '/' + carList[i].img_path;
        }
 
        res.render('my-list', {
            cars: carsl,            
            title: "Cars",
            header: "Some users",
            style: "css/style.cars.css",
            partials:{}
        });

    };

    postAction = async (req, res, next) => {

        if(req.method == "POST")
        {

             var form = new formidable.IncomingForm({ multiples: true });
             form.parse(req, function (err, fields, files) {

                var jsonData = js.formInputArrayToJson(fields);

                var $json = {}, value;
                Object.keys(jsonData).forEach(function(key) {  
                    value = jsonData[key];
                    if(key == 'brand')
                    {
                        $json["id_brand"] = value;
                    }
                    else if(key == 'model')
                    {
                        $json["id_model"] = value;
                    }
                    else if(key == 'variant')
                    {
                        $json["id_model_variant"] = value;
                    }
                    else
                    {
                        $json[key] = value;
                    }                    
                });

                let idUsers = secure.authorize(req, res, next);
                $json.id_users = idUsers;


                 var oldpath = files['post[img]'].path;

                var uploadsCars = "uploads/cars";
                const uploadFolder = path.join(__dirname, '../public/' + uploadsCars);
           
                var d = new Date();

                var fullFileName  = files['post[img]'].name;
     

                var fileName      = path.parse(fullFileName).name;
                var fileExtension = path.parse(fullFileName).ext;
            

                var imgFile = fileName + '_' + idUsers  + '_' + d.getTime() + fileExtension;
                var newpath = uploadFolder + '/' + imgFile;

                $json.img_path = uploadsCars + '/' + imgFile;

                fs.rename(oldpath, newpath, function (err) {
                    //if (err) throw err;
                    //res.write('File uploaded and moved!');
                    //res.end();                
                 });
                 // Insert in DB
                 cars.post($json);                 
            });
        }


        var model = [];
        var modelVariant = [];
        var brandId = req.query.brand;
        var modelId = req.query.model;

        if(brandId)
        {
            let modelList = await cars.model(brandId);
            res.json(modelList);
            res.end();
        }

        if(modelId)
        {
            let modelVariantList = await cars.modelVariant(modelId);
            res.json(modelVariantList);
            res.end();
        }
        
        const firstEmitter = new EventEmitter();
        firstEmitter.emit("My first event");


        let brandList = await cars.brand();

        res.render('post', {
            title: "Post Car",
            brand: brandList,     
            model: model,
            modelVariant: modelVariant,       
            header: "Some users",
            style: "/css/style.cars-post.css",
            partials:{}
        });
    };
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new CarsController();