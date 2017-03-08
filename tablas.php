<html>
<body>

<?php
/* Programa para imprimir las tablas de multiplicar desde la 1 a la 10 */
for($tabla=1; $tabla<=10; $tabla++) //<-un ciclo de 10 (uno para cada tabla)
{
 echo "<h3>Tabla del $tabla </h3>";
 
 // generamos la tabla
 for($i=1; $i<=10; $i++) 
 {
  echo "$tabla x $i = ". ($tabla*$i) . "<br/>";
 }
}
?>
</body>   
</html>