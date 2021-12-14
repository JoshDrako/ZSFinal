var pool = require('./bd');

async function getHistorias(){
    var query = 'select * from historias order by id DESC';
    var rows = await pool.query(query);
    return rows;
}

async function deleteHistoriasByID(id) {
    var query = 'delete from historias where id=?';
    var row = await pool.query(query,[id]);
    return row;
}

async function insertHistoria(obj) {
    try{
        var query = 'insert into historias set ?';
        var rows = await pool.query(query,[obj]);
        return rows;
    }catch(error) {
        console.log(error);
        throw error;
    }
}

async function getHistoriasbyId(id) {
    var query = 'select * from historias where id=?';
    var rows = await pool.query(query,[id]);
    return rows[0];
}

async function modificarHistoriabyId(obj,id) {
    try {
        var query = 'update historias set ? where id=?';
        var rows = await pool.query(query, [obj,id]);
        return rows;
    } catch(error) {
        throw error;
    }
}

async function buscarHistorias(busqueda){
    var query = 'select * from historias where titulo like ? OR subtitulo like ? OR cuerpo like ?';
    var rows = await pool.query(query, ['%' + busqueda + '%', '%' + busqueda + '%', '%' + busqueda + '%']);
    return rows;
}

module.exports = { getHistorias, deleteHistoriasByID, insertHistoria, getHistoriasbyId, modificarHistoriabyId, buscarHistorias }