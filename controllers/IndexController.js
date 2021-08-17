const HttpException = require('../util/HttpException');

class IndexController {

    indexAction = async(req, res, next) => {
        res.render('index', {
            title: "Home",
            header: "Some users",
            partials:{}
          });
    };
    
    aboutAction = async(req, res, next) => {
        res.render('about', {
            title: "About",
            header: "Some users",
            style: "css/style.about.css",
            partials:{}
        });
    }
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new IndexController();