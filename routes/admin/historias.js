var express = require('express');
var router = express.Router();
var historiasModel = require('../../models/historiasModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;

const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

router.get('/', async function (req, res, next) {
    var historias
    if (req.query.q === undefined) {
        historias = await historiasModel.getHistorias();
    } else {
        historias = await historiasModel.buscarHistorias(req.query.q)
    }

    historias = historias.map(historia => {
        if (historia.img_id) {
            const imagen = cloudinary.image(historia.img_id, {
                width: 80,
                height: 80,
                crop: 'fill'
            });
            return {
                ...historia,
                imagen
            }
        } else {
            return {
                ...historia,
                imagen: ''
            }
        }
    });

    res.render('admin/historias', {
        layout: 'admin/layout',
        usuario: req.session.nombre,
        historias,
        is_search: req.query.q !== undefined,
        q: req.query.q
    });
});

router.get('/eliminar/:id', async (req, res, next) => {
    var id = req.params.id;
    let historia = await historiasModel.getHistoriasbyId(id);
    if(historia.img_id) {
        await(destroy(historia.img_id));
    }

    await historiasModel.deleteHistoriasByID(id);
    res.redirect('/admin/historias');
});

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    });
});

router.post('/agregar', async (req, res, next) => {
    try {
        var img_id = '';
        if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        }

        console.log(req.body);
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await historiasModel.insertHistoria({
                ...req.body,
                img_id
            });
            res.redirect('/admin/historias');
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos son requeridos'
            });
        }
    } catch (error) {
        console.log(error);
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se cargo la historia'
        })
    }
});

router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    var historias = await historiasModel.getHistoriasbyId(id);

    res.render('admin/modificar', {
        layout: 'admin/layout',
        historias
    });
});

router.post('/modificar', async (req, res, next) => {
    try {

        let img_id = req.body.img_original;
        let borrar_img_vieja = false;

        if (req.body.img_delete === "1") {
            img_id = null;
            borrar_img_vieja = true;
        } else {
            if (req.files && Object.keys(req.files).length > 0) {
                imagen = req.files.imagen;
                img_id = (await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }

        if (borrar_img_vieja && req.body.img_original) {
            await (destroy(req.body.img_original));
        }

        var obj = {
            titulo: req.body.titulo,
            subtitulo: req.body.subtitulo,
            cuerpo: req.body.cuerpo,
            img_id
        }

        console.log(obj);
        await historiasModel.modificarHistoriabyId(obj, req.body.id);
        res.redirect('/admin/historias');
    } catch (error) {
        console.log(error);
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se modifico la historia'
        });
    }
});

module.exports = router;

