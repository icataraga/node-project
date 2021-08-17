const express = require("express");
const carsController    = require("../controllers/CarsController");
const usersController   = require("../controllers/UsersController");
const indexController   = require("../controllers/IndexController");
const css               = require("../util/Css.js");
const route             = require("../util/Route.js");


const router  = express.Router();

router.get("/", route.controller(indexController.indexAction));
router.get("/cars", route.controller(carsController.listAction));
router.get("/login", route.controller(usersController.loginAction))
      .post("/login", route.controller(usersController.loginAction));
router.get("/register", route.controller(usersController.registerAction))
      .post("/register", route.controller(usersController.registerAction));
router.get("/about", route.controller(indexController.aboutAction));


/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = router; 