var express = require('express');
var router = express.Router();
var nodemailer = require ('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacto', {
    isContacto: true
  }); //contacto.hbs
});

router.post('/', async(req,res,next) => {
  console.log(req.body);
  var nombre = req.body.nombre;
  var email = req.body.email;
  var titulo = req.body.titulo;
  var historia = req.body.historia;

   var obj ={
    to:'joseph02681985@gmail.com',
    subject: 'CONTACTO WEB',
    html: nombre + ' se contacto a traves de la pagina, su contacto es: ' + email + '.</br> Y envió la siguiente historia: ' + titulo + '.</br> ' + historia
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth:{
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })

  var info = await transport.sendMail(obj);

  res.render('contacto',{
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;
