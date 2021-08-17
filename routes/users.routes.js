const express         = require("express");
const usersController = require("../controllers/UsersController");
const carsController  = require("../controllers/CarsController");
const css             = require("../util/Css.js");
const route           = require("../util/Route.js");
const secure          = require("../util/Secure.js");
const router          = express.Router();

function auth(req, res, next) {
    let id = secure.authorize(req, res, next);
    if (id > 0 || req.path==='/login') {
        next();
    } else {
       res.redirect("/login");
    }
}
router.get("/account", auth, route.controller(usersController.indexAction));
router.get("/my-list", auth, route.controller(carsController.myListAction));
router.get("/logout", auth, route.controller(usersController.logoutAction));
router.get("/post/:action?", auth, route.controller(carsController.postAction))
      .post("/post", auth, route.controller(carsController.postAction));



/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = router; 