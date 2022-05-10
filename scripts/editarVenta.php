<?php
include '../scripts/conexion.php';
$idusuario = $_POST["asesor"];
$idventa = $_POST["venta"];
$idcliente = $_POST["cliente"];
$obs = $_POST["obs"];
$sentencia = $con->prepare("SELECT * from usuario where idusuario=:idusu and estado=:estado");
$sentencia->bindParam(':idusu', $idusuario, PDO::PARAM_INT);
$sentencia->bindValue(':estado', "Activo");
$sentencia->execute();
$resultado = $sentencia->fetchAll();
$num = count($resultado);
if ($num > 0) {
    registrarVenta();
}
function registrarVenta()
{
    include '../scripts/conexion.php';
    $idusuario = $_POST["asesor"];
    $idventa = $_POST["venta"];
    $idcliente = $_POST["cliente"];
    $obs = $_POST["obs"];
    $vehiculos = $_POST["vehiculos"];
    $obs = $_POST["obs"];


    $sentencia = $con->prepare("UPDATE venta SET cliente=:cliente,usuario=:usuario,observaciones=:observaciones where idventa=:idventa;");
    $sentencia->bindParam(':cliente', $idcliente, PDO::PARAM_INT);
    $sentencia->bindParam(':usuario', $idusuario, PDO::PARAM_INT);
    $sentencia->bindParam(':observaciones', $obs, PDO::PARAM_STR);
    $sentencia->bindParam('idventa', $idventa, PDO::PARAM_INT);
    $sentencia->execute();

    $sentencia = $con->prepare("DELETE FROM detalle_venta where venta=:idventa;");
    $sentencia->bindParam(':idventa', $idventa, PDO::PARAM_INT);
    $sentencia->execute();

    foreach ($vehiculos as $vehiculo) {
        foreach ($vehiculo as $dato) {
            $marca = $dato[0];
            $modelo = $dato[1];
            $tipo = $dato[2];
            $color = $dato[3];
            $numpas = $dato[4];
            $precio = $dato[5];
            $tventa = $dato[6];
            $contacto = $dato[7];
            if ($dato[8]) {
                $ruat = "si";
            } else {
                $ruat = "no";
            }
            if ($dato[9]) {
                $poliza = "si";
            } else {
                $poliza = "no";
            }
            if ($dato[10]) {
                $soat = "si";
            } else {
                $soat = "no";
            }
            if ($dato[11]) {
                $placa = "si";
            } else {
                $placa = "no";
            }
            if ($dato[12]) {
                $transito = "si";
            } else {
                $transito = "no";
            }

            $sentencia2 = $con->prepare("INSERT INTO detalle_venta(venta,marca,modelo,tipo,color,nump,precio,tipo_venta,contacto,
            ruat,poliza,soat,placa,resolucion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            $sentencia2->bindParam(1, $idventa, PDO::PARAM_STR);
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
    echo "Registrado";
}
