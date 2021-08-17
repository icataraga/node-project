const db     = require("../config/Db.js");
const secure = require("../util/Secure.js");


class Users
{
	table = "users";

	account = async (id) => {
		const response = await db.query(`SELECT * FROM ${this.table} WHERE id=${id}`);
		return response
	}

	list = async () => {
		const response = await db.query(`SELECT * FROM ${this.table}`);
		return response
	}

	addNewUser = async(data) => {

		var response = '';
		var check  = '';

		var i = 0, f = '', v = '', value;
		var l = Object.keys(data).length;
		Object.keys(data).forEach(function(key) {
			if(key != undefined)
			{
				if(['pwd', 'retype_pwd'].indexOf(key) == -1)
				{
					value = data[key].replace(/'/gi, "\'");
			        f += ( i > 0 ) ? ( ',' + key ) : key;
			        v += ( i > 0 ) ? ( ',\'' + value + '\'' ) : '\'' + value + '\'';
			        i++;
				}			
			}			
		});

		check = await db.query(`SELECT email FROM ${this.table} WHERE email="${data.email}"`);

		if((data.pwd != data.retype_pwd) && (data.pwd.length > 3))
		{
			response = {msg: 'Password && Confirm Password should be equal.'};
		}
		else
		{	
		    var fields    = '(' + f + ', password)';
		    var variables = '(' + v + ',\'' + (secure.MD5(data.pwd)) + '\')';
		    response = await db.query(`INSERT INTO ${this.table} ${fields} VALUES ${variables}`);
		}		
		return response;
	}

	login = async (data) => 
	{
		let email    = data.email;
		let password = secure.MD5(data.password);

		//console.log("email: ", email, "; password: ", password);
		//console.log(`SELECT id, email, password FROM ${this.table} WHERE email="${email}" && password="${password}"`);
		const response = await db.query(`SELECT id, email, password FROM ${this.table} WHERE email="${email}" && password="${password}"`);
		return response;		
	}
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new Users();












