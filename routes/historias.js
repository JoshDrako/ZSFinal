var express = require('express');
var router = express.Router();
var historiasModel = require('../models/historiasModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {
  var historias
  if (req.query.q === undefined) {
    historias = await historiasModel.getHistorias();
  } else {
    historias = await historiasModel.buscarHistorias(req.query.q);
  }

  historias = historias.map(historia => {
    if(historia.img_id){
      const imagen = cloudinary.url(historia.img_id, {
        width: 960,
        height: 300,
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


  res.render('historias', {
    isHistorias: true,
    historias,
    is_search: req.query.q != undefined,
    q: req.query.q
  });
});

module.exports = router;
