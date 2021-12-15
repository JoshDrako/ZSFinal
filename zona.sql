-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-12-2021 a las 22:07:08
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginazona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historias`
--

DROP TABLE IF EXISTS `historias`;
CREATE TABLE IF NOT EXISTS `historias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historias`
--

INSERT INTO `historias` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Cruenta abducción', 'El que quizás sea el tema mas hórrido y referido al tópico de extraterrestres, es la mutilación de ganado.', 'skpiyvybzt7stzb9lzhe', '<p>Desde los años 60 hasta tan tarde como el 2001, granjeros en Estados Unidos y otras partes del mundo pidieron auxilio porque vieron carcasas de vacas, caballos u otros animales completamente vacías y desmembradas en el campo. Hay muchas cosas que pueden matar un animal, pero la mutilación de ganado es distinta. Se han amputado las patas de los animales con una limpieza formidable. Se les ha extraído la sangre por medio de orificios, se les ha cortado la cabeza con una limpieza superior a la de una guillotina. Mientras mas lo piensas, mas se responden preguntas como ¿no habrán sido bromistas en la noche? ¿una secta que trabajaba contrarreloj por la madrugada? ¿un animal? No, porque estos seres no fueron brutalizados, fueron diseccionados quirúrgica-mente, como si hubiesen pasado por una autopsia. ¿por que se les relaciona con extraterrestres? Por que gran parte de los dueños de estos animales, han dicho haber visto luces extrañas no solo en el campo, sino en el cielo durante aquellos días.</p>\r\n\r\n<p>Todo esto no es sino el abre-boca del caso mas horrendo respecto a este tema, cuando encontraron el cadáver de un ser humano con estas mismas características. Ocurrió en el año 1994 en la represa Billings afueras de Sao Paulo. La víctima se llamaba Sebastián Goncálvez, de 53 años. Sufría de epilepsia, y probablemente era alcohólico. Hay que acotarlo, porque muy para el rechazo del publico, algunos escépticos dicen que el cadáver de este señor fue dispuesto por aves de rapiña y roedores. Pero se han visto refutados cuando comparan fotos de su cadáver con el de personas que si han sido devoradas por animales, o el de animales que han sido despachados por otros animales, y el resultado según ellos, no podría ser mas dispar. Contar el estado en el que encontraron el cuerpo de Sebastián Goncálvez es indigesto.</p>'),
(8, 'prueba 1', 'prueba agregar y eliminar', 'skg5jcatvj4b5nedwmih', 'prueba img'),
(4, 'El juego de las escaleras', 'Nada como un buen juego antes de ir al Inframundo, ¿no?', 'a0lswumvb9lthk4mlmzp', '<p>Para comenzar, debes recitar unas palabras:</p>\r\n<p>\"Hoy me presento ante ti Lucifer, ábreme las puertas de tu reino\"</p>\r\n<p>Debes hacerlo unas 6 veces, con el fin de bendecirte. Tras esto, tómate un respiro y colócate una venda en los ojos, comienza subiendo y contando cada escalón hasta llegar al último.\r\nUna vez llegues al último, memoriza el número y repite la frase mencionada anteriormente; luego desciende contando otra vez, hasta llegar al último de abajo. Si cuentas los mismos escalones fallaste y tienes que intentarlo de nuevo repitiendo la frase. Sin embargo, si has contado un escalón más prepárate, porque el juego comenzó, puedes hacer lapsos de tiempo en subir o bajar para tomar un respiro.</p>\r\n<p>Dependiendo de los pecados que hayas cometido o el tipo de persona que eres te será más fácil o más difícil entrar al Inframundo. Escucharás ruidos que provienen de tu casa o cosas que se caen, pero no te asustes, recuerda que debes controlarte en todo momento y no sentir miedo. Comenzarás a descender hasta pasillos muy profundos, vas a sentir tu cuerpo con más calor y percibirás olores extraños, pero tendrás que seguir bajando. Hasta que escuches una voz que te preguntará:</p>\r\n<p>\"¿Qué quieres?\"</p>\r\n<p>Debes decir, sin temor, el deseo que hayas pensado. Una vez hecho esto, sin miedo, debes volver a subir las escaleras hasta que no puedas subir más y solo ahí podrás quitarte la venda y respirar profundo, ya que has terminado el juego. Recuerda: SI NO LO HACES BIEN, TE CAES O NO CONTINÚAS EL JUEGO, PUEDES QUEDARTE PARA SIEMPRE EN EL INFRAMUNDO.\r\nPara éste juego es obligatorio tener los ojos vendados, que sea de noche y no llevar ningún objeto contigo.</p>'),
(3, 'Los “Cabezas redondas” del Tassili', 'Los extraños Dioses del desierto de Tassili\". ¿Dioses con escafandras?', 'wtyo8tvdrizjyaigutby', '<p>Las pinturas rupestres de Tassili son sin duda alguna, evidencias de la posible visita extraterrestre que recibimos los humanos durante la pre-historia, concretamente en la meseta de Tassili, al sur de Argelia, en el árido desierto del Sahara. Según los expertos, en las cavernas de Tassili n’Ajjer está “la más importante colección de arte rupestre conocida”, son miles de millares de pinturas, que se cree que solo son el 20%, las demás han sido destruidas por la erosión.</p>\r\n<p>Estas pinturas rupestres datan de 10 a 15 mil años de antiguedad; las pinturas de esa epoca suelen tener una sola tonalidad de color, en cambio, las de Tassili usan mas tonalidades, lo cual las hace mas especial aún. La gran mayoría de las imagenes son de animales: jirafas, avestruces, elefantes, bueyes, yacarés e incluso hipopótamos, lo cual demuestra que en la antiguedad esa región estuvo llena de vida, Tassili quiere decir “plataforma de los ríos”.</p>\"'),
(5, 'Zalgo', 'Seis de sus bocas hablan en lenguas diferentes, cuando el momento llegue, la séptima cantará la canción que pondrá fin a la Tierra.', 'n3u8m5lfndxizjstlzwi', '<p>Zalgo, es una entidad maligna caótica, asociada comúnmente con la locura, la muerte, la destrucción, el miedo y el fin del mundo como lo conocemos.</p>\r\n\r\n<p>Una entidad viviendo en otro plano dimensional y que cuando aparece en el nuestro crea el caos, su sola presencia, es capaz de llevar a una persona hacia el vórtice de la locura. En pocas palabras, Zalgo es...  el horror en persona. Por más que busques en internet, jamás encontraras una respuesta clara sobre qué es Zalgo, debido a que no existe tal, ya que Zalgo es algo tan terrible, que no existen palabras para describirlo. A lo mucho, en la mayoría de las veces, encontrarás la siguiente descripción:</p>\r\n\r\n<p>\"Él espera detrás de la pared, en un palacio de cristal torturado, servido por legiones forjadas a partir de las lágrimas de los muertos sin descanso, vestidos con armaduras talladas en el sufrimiento de las madres.</p>\r\n\r\n<p>Él es el mente de colmena que confunde a los vivos, y perpetúa la tortura de los condenados, él toma los ojos, la ventana del alma, y elimina la capacidad de sentir cualquier cosa que no sea nada más que dolor, una vez que los ojos son removidos, el alma es removida, el cascaron viviente es el testimonio de la crueldad y la condenación eterna.</p>\r\n\r\n<p>No puede ser detenido, así como el miedo no puede ser detenido, es inseparable de la realidad, ya que existe más allá del velo… esperando.</p>\r\n\r\n<p>Él espera detrás de la pared delgada que ha construido en su alma, él espera… pero ha de liberarse… y ha de venir. </p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'joseph', '6562c5c1f33db6e05a082a88cddab5ea'),
(2, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
