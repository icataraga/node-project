class Css{
	style = function(href)
    {
	     return "<link rel='stylesheet' href='"+(href)+"'>";
    }
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
 module.exports = new Css();