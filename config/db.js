var mysql  = require('mysql');
const utilDb = require("../util/Db.js");

class Db
{
	conf = {
		host : "localhost",
		user : "root",
		password : "",
		database: "cars"
    }

	con = function(db){
	
		if(db.length == 0) alert('No Database Selected.');	
		
		var con = mysql.createConnection(this.conf);
	
		con.connect(function(err) {
			if (err)
				throw err;		
		});
	
		return (con);
	};
	
	
	query = async (querySql) => {
		return new Promise((resolve, reject) => {
		this.con('cars').query(querySql, function (err, result, fields) {
			if (err) throw err;			
			return err ? reject(err) : resolve(utilDb.jsonValues(result));
		  });
	  });
	}
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new Db();