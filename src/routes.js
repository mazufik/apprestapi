'user strict';

module.exports = function(app){
    var jsonku = require('./src/controller');

    app.route('/')
        .get(jsonku.index);
}