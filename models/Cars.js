const db     = require("../config/Db.js");


class Cars
{
	table = "car";

	list = async () => {
		const response = await db.query(`SELECT * FROM ${this.table}`);
		return response
	}

	myList = async (id) => {
		const response = await db.query(`SELECT * FROM ${this.table} WHERE id_users=${id}`);
		return response
	}

	brand = async () => {
		const response = await db.query(`SELECT * FROM brand`);
		return response
	}

	model = async (idBrand) => {
		const response = await db.query(`SELECT * FROM model WHERE id_brand=${idBrand}`);
		return response
	}

	modelVariant = async (idModelVariant) => {
		const response = await db.query(`SELECT * FROM model_variant WHERE id_model=${idModelVariant}`);
		return response
	}

	post = async(data) => {

		var response = '';
		var check  = '';

		var i = 0, f = '', v = '', value;
		var l = Object.keys(data).length;
		Object.keys(data).forEach(function(key) {
			if(key != undefined)
			{
				if(['ig'].indexOf(key) == -1)
				{
					value = data[key];
			        f += ( i > 0 ) ? ( ',' + key ) : key;
			        v += ( i > 0 ) ? ( ',\'' + value + '\'' ) : '\'' + value + '\'';
			        i++;
				}			
			}			
		});

		var fields    = '(' + f + ')';
		var variables = '(' + v + ')';

		//console.log("postCar: " + `INSERT INTO ${this.table} ${fields} VALUES ${variables}`);
		response = await db.query(`INSERT INTO ${this.table} ${fields} VALUES ${variables}`);
			
		return response;
	}
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new Cars();












