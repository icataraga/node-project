class Db{
	 jsonValues = function(dbObject)
     {
	     return Object.values(JSON.parse(JSON.stringify(dbObject)));
     }
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
 module.exports = new Db();