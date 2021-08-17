class Route {
    controller= function(action)
    {
        return async (req, res, next) => {
            try {
                await action(req, res, next)
            } catch (err) {
                next(err)
            }
        }
    }
}

/******************************************************************************
 *                               Export
 ******************************************************************************/
 module.exports = new Route();