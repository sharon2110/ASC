<?php
include '../scripts/conexion.php';
$idusuario = $_POST["idUsuario"];
$obs = $_POST["obs"];
$sentencia = $con->prepare("SELECT * from usuario where idusuario=:idusu and estado=:estado");
$sentencia->bindParam(':idusu', $idusuario, PDO::PARAM_INT);
$sentencia->bindValue(':estado', "Activo");
$sentencia->execute();
$resultado = $sentencia->fetchAll();
$num = count($resultado);
if ($num > 0) {
    registrarVenta();
    echo "Registrado";
}



function registrarVenta()
{
    include '../scripts/conexion.php';
    $cliente = $_POST["cliente"];
    $vehiculos = $_POST["vehiculos"];
    $idusuario = $_POST["idUsuario"];
    $obs = $_POST["obs"];
    $fecha = date('d-m-Y');
    date_default_timezone_set('Etc/GMT-6');
    $hora = date('h:i:A', time() + 43200);
    $sentencia = $con->prepare("INSERT INTO venta(cliente,usuario,fecha,hora,observaciones) VALUES (?, ?, ?,?, ?);");
    $sentencia->bindParam(1, $cliente, PDO::PARAM_INT);
    $sentencia->bindParam(2, $idusuario, PDO::PARAM_INT);
    $sentencia->bindParam(3, $fecha, PDO::PARAM_STR);
    $sentencia->bindParam(4, $hora, PDO::PARAM_STR);
    $sentencia->bindParam(5, $obs, PDO::PARAM_STR);
    $sentencia->execute();
    $sentencia1 = $con->prepare("SELECT idventa FROM venta WHERE cliente=:cliente and usuario=:usuario and fecha=:fecha");
    $sentencia1->bindParam(':cliente', $cliente, PDO::PARAM_INT);
    $sentencia1->bindParam(':usuario', $idusuario, PDO::PARAM_INT);
    $sentencia1->bindParam(':fecha', $fecha, PDO::PARAM_STR);
    $sentencia1->execute();
    $resultado1 = $sentencia1->fetch();
    $idVenta =  $resultado1["idventa"];
    foreach ($vehiculos as $vehiculo) {
        foreach ($vehiculo as $dato) {
            $marca = $dato[0];
            $modelo = $dato[1];
            $color = $dato[2];
            $numpas = $dato[3];
            $precio = $dato[4];
            $tventa = $dato[5];
            $contacto = $dato[6];
            if ($dato[7]) {
                $ruat = "si";
            } else {
                $ruat = "no";
            }
            if ($dato[8]) {
                $poliza = "si";
            } else {
                $poliza = "no";
            }
            if ($dato[9]) {
                $soat = "si";
            } else {
                $soat = "no";
            }
            if ($dato[10]) {
                $placa = "si";
            } else {
                $placa = "no";
            }
            if ($dato[11]) {
                $transito = "si";
            } else {
                $transito = "no";
            }
            $sentencia2 = $con->prepare("SELECT tipo FROM vehiculo WHERE marca=:marca and modelo=:modelo");
            $sentencia2->bindParam(':marca', $marca, PDO::PARAM_STR);
            $sentencia2->bindParam(':modelo', $modelo, PDO::PARAM_STR);
            $sentencia2->execute();
            $resultado2 = $sentencia2->fetch();
            $tipo =  $resultado2["tipo"];
            $sentencia2 = $con->prepare("INSERT INTO detalle_venta(venta,marca,modelo,tipo,color,nump,precio,tipo_venta,contacto,
                ruat,poliza,soat,placa,resolucion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            $sentencia2->bindParam(1, $idVenta, PDO::PARAM_STR);
            $sentencia2->bindParam(2, $marca, PDO::PARAM_STR);
            $sentencia2->bindParam(3, $modelo, PDO::PARAM_STR);
            $sentencia2->bindParam(4, $tipo, PDO::PARAM_STR);
            $sentencia2->bindParam(5, $color, PDO::PARAM_STR);
            $sentencia2->bindParam(6, $numpas, PDO::PARAM_STR);
            $sentencia2->bindParam(7, $precio, PDO::PARAM_STR);
            $sentencia2->bindParam(8, $tventa, PDO::PARAM_STR);
            $sentencia2->bindParam(9, $contacto, PDO::PARAM_STR);
            $sentencia2->bindParam(10, $ruat, PDO::PARAM_STR);
            $sentencia2->bindParam(11, $poliza, PDO::PARAM_STR);
            $sentencia2->bindParam(12, $soat, PDO::PARAM_STR);
            $sentencia2->bindParam(13, $placa, PDO::PARAM_STR);
            $sentencia2->bindParam(14, $transito, PDO::PARAM_STR);
            $resultado2 = $sentencia2->execute(); # Pasar en el mismo orden de los ?
        }
    }
}
