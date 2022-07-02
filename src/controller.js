'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function(req, res){
    response.ok('Aplikasi REST API berjalan', res)
};

//menampilkan semua data mahasiswa
exports.tampilmahasiswa = function(req,res){
    connection.query('select * from mahasiswa', function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok(rows, res)
        }
    });
};

//menampilkan semua data mahasiswa berdasarkan id
exports.tampilberdasarkanid = function(req,res){
    let id = req.params.id;
    connection.query('select * from mahasiswa where id_mahasiswa= ?', [id], 
    function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok(rows, res)
        }
    });
};

//menambahkan data mahasiswa
exports.tambahmahasiswa = function(req, res){
    let nim = req.body.nim;
    let nama = req.body.nama;
    let jurusan = req.body.jurusan;

    connection.query('INSERT INTO mahasiswa (nim, nama, jurusan) VALUES(?, ?, ?)',
    [nim, nama, jurusan],
    function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok('Berhasil menambahkan data!',res);
        }
    });
};

//mengubah data berdasarkan id
exports.ubahMahasiswa = function(req, res){
    let id = req.body.id_mahasiswa;
    let nim = req.body.nim;
    let nama = req.body.nama;
    let jurusan = req.body.jurusan;

    connection.query('UPDATE mahasiswa SET nim=?, nama=?, jurusan=? WHERE id_mahasiswa=?',
    [nim, nama, jurusan, id],
    function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok('Berhasil mengubah data!', res);
        }
    });
};

//menghapus data mahasiswa
exports.hapusMahasiswa = function(req, res){
    let id = req.body.id_mahasiswa;
    connection.query('DELETE FROM mahasiswa WHERE id_mahasiswa=?', [id],
    function(error, rows, fields){
        if(error){
            console.log(error);
        }else {
            response.ok('Berhasil mengubah data!', res);
        }
    });
};