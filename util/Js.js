class Js{
	formInputArrayToJson = function(fields)
    {
        var jsonData = {};
        var data = JSON.parse(JSON.stringify(fields));
        Object.keys(data).forEach(function(key) {
             var value = data[key];
             var k = key.split('[')[1].replace(/]/gi, "");    
             jsonData[k] = value;
        });
	     return (jsonData);
    }
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
 module.exports = new Js();