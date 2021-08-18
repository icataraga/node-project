//--
const express = require("express");
const app     = express();
const router  = express.Router();

const bootstrap = require("./src/bootstrap");
bootstrap(app, router);
app.listen(3000, function() {
	console.log("server started on port 3000");
});