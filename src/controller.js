'use strict';

var response = require('./src/res');
var connection = require('./src/koneksi');

exports.index = function(req, res){
    response.ok('Aplikasi REST API berjalan')
};