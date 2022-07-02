'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function(req, res){
    response.ok('Aplikasi REST API berjalan', res)
};

//menampilkan semua data mahasiswa
exports.tampilmahasiswa = function(req,res){
    connection.query('select * from mahasiswa', function(error, rows, fileds){
        if(error){
            connection.log(error);
        }else {
            response.ok(rows, res)
        }
    });
};