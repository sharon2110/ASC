<?php
session_start();
$usuario = $_SESSION['usuario'];
$tusu = $_SESSION['tipo'];
$idusu = $_SESSION['idusuario'];
$estado = $_SESSION['estado'];
if ($usuario == null || $usuario == "" || $estado != "Activo") {
    header("Location: ../scripts/cerrarSesion.php");
}
?>

<?php

$proceso = $_GET['id'];

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/all.css">
    <link rel="stylesheet" href="./css/sweetalert2.min.css">
    <link rel="stylesheet" href="./css/estiloHome.css">
    <link rel="stylesheet" href="./css/estiloVentas.css">
    <title>Editar_Venta</title>
</head>

<body>
    <main class="contenedorPrincipal">
        <section class="contenedorMenu">
            <?php include "./inc/navlateral.php" ?>
        </section>


        <section class="navbar aside">
            <?php include "./inc/navbar.php" ?>
            <!-- OPCIONES RAPIDAS-->
            <div class="container-fluid">
                <ul class="opciones">
                    <li>
                        <a href="nuevaVenta.php" style="font-size:15.5px!important;"><i class="fas fa-plus fa-fw"></i>
                            &nbsp;
                            REGISTRAR VENTA</a>
                    </li>
                    <li>
                        <a href="listaVenta.php" style="font-size:15.5px!important;"><i
                                class="fas fa-clipboard-list fa-fw"></i>
                            &nbsp; LISTA
                            DE VENTAS</a>
                    </li>
                    <li>
                        <a href="buscaVenta.php" style="font-size:15.5px!important;"><i
                                class="fas fa-search fa-fw"></i>&nbsp;
                            BUSCA VENTA</a>
                    </li>
                </ul>
            </div>

            <!-- TABLA REGISTRO-->
            <input type="text" name="id" id="id_venta" maxlength="4" value="<?php echo base64_decode($proceso) ?>"
                hidden>
            <div class="container-fluid">
                <form action="" class="formularioVenta" id="ac_reg_venta" autocomplete="off" method="POST"
                    enctype="multipart/form-data">
                    <fieldset>
                        <legend><i class="fas fa-edit "></i> &nbsp; Editar venta</legend>
                        <div class="container-fluid">
                            <input type="text" name="id" id="id_cliente" maxlength="16" value="" hidden>
                            <div class="row" style="text-align:center;">
                                <div class="col-12 col-md-2">
                                    <br>
                                    <button class="btn btn-danger fa-sm" data-bs-toggle="modal"
                                        data-bs-target="#modalCliente" type="button" name="btnAdCliente"
                                        id="idbtnAdCliente"
                                        style="width:55%; padding:7px;margin-bottom:10px; margin:auto;" hidden> <i
                                            class="fas fa-user-plus"></i></button>
                                </div>
                                <div class="modal fade" id="modalCliente" tabindex="-1" aria-labelledby="modelTitleId"
                                    aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-body" style="text-align:center;">
                                                <div class="row" style="margin:auto;">
                                                    <div class="col-12 col-md-12">
                                                        <div class="form-group">
                                                            <label for="inputSearch" class="bmd-label-floating"
                                                                id="labelCi"
                                                                style="display:block; margin:5px;font-size:14px; font-weight:bold;">
                                                                Cliente</label>
                                                            <input type="text" class="form-control"
                                                                pattern="[0-9]{5,20}" name="busquedaCI"
                                                                style="display:block;" id="inputCi" maxlength="10">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-12">
                                                        <div class="form-group" style="text-align:center;">
                                                            <p class="text-center"
                                                                style="margin-top: 20px; font-size:15px;">
                                                                <button type="button" style="font-size:15px;"
                                                                    class="btn btn-success" name="buscaC"
                                                                    style="display:block; width:40%; margin:0px auto;"
                                                                    id="idbuscaCi"> <i class="fas fa-search"></i>
                                                                    BUSCAR</button>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive contenedorTablaBus tablaresbusCI col-12 col-md-12"
                                    id="idtablabusCI" style="display:none;">
                                    <table class=" table table-sm tablaBus" id="tablaCliente" style="font-size:14px;">
                                        <thead>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row" style="margin-left:0px;">

                                <div class="col-12 col-md-4 selecAsesor">
                                    <div class="form-group">
                                        <label for="estado" class="bmd-label-floating titulo">Asesor</label>
                                        <select name="asesor" class="form-select" id="asesorid" required
                                            style="font-size:14px;">
                                            <option value="" selected>Seleccionar</option>
                                            <?php
                                            require_once '../scripts/conexion.php';
                                            $sql = $con->prepare("SELECT * from usuario u order by u.paterno");
                                            $sql->execute();
                                            $resultado = $sql->fetchAll();
                                            foreach ($resultado as $usuario) : ?>
                                            <option value="<?php echo $usuario["idusuario"]; ?>">
                                                <?php echo $usuario["paterno"] . " " . $usuario["materno"] . " " . $usuario["nombre"]; ?>
                                            </option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-6 col-md-2">
                                    <button class="btn btn-danger botonOpciones" type="button" data-bs-toggle="modal"
                                        data-bs-target="#modalV" style="margin-left:25px;"><i
                                            class="fas fa-car fa-xs"></i></button>
                                </div>
                                <div class="col-6 col-md-2">
                                    <button class="btn btn-warning botonOpciones" type="button" data-bs-toggle="modal"
                                        data-bs-target="#modalVadd"><i class="fas fa-plus fa-xs"></i></button>
                                </div>


                            </div>
                            <div class="col-12" style="margin-top:20px; margin-left:10px; width:95%;">
                                <textarea class="form-control" aria-label="With textarea" id="observacionid"
                                    name="observacion" placeholder="Escriba las observaciones"
                                    style="font-size:15px;"></textarea>
                            </div>
                            <div class="modal fade" id="modalV" tabindex="-1" aria-labelledby="modelTitleId"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="font-size:16px;">Lista de vehículos</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="table-responsive justify-content-center contenedorTablaBus tablaresbusM col-12 col-md-12"
                                                id="idtablabusM" style="display:none;">
                                                <table class="table table-sm tablaBusV" id="tablaVehiculo">
                                                    <thead>
                                                    </thead>
                                                    <tbody>


                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="modalVE" tabindex="-1" aria-labelledby="modelTitleId"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="font-size:16px;">Características y
                                                documentos del vehiculo</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body" style="text-align:center;">
                                            <div class="row" style="text-align:center; margin-top:0px;">
                                                <input type="text" name="id" id="id_cliente" maxlength="16" value=""
                                                    hidden>
                                                <br>
                                                <div class="row">
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusMarca">Marca</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="marca" id="marcaid"
                                                                maxlength="50" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusModelo">Modelo</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="modelo" id="modeloid"
                                                                maxlength="50" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusModelo">Tipo</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="tipo" id="tipoid"
                                                                maxlength="50" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusColor">Color</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="color" id="colorid"
                                                                maxlength="50" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusPas">#Pas</label>
                                                            <input type="text" pattern="[0-9]{1,2}" required
                                                                class="form-control" name="numpas" id="numpasid"
                                                                maxlength="2" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusPas">Cil.</label>
                                                            <input type="text" pattern="[a-zA-Z0-9]{5,8}" required
                                                                class="form-control" name="cil" id="cilid" maxlength="8"
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusPrecio">Precio</label>
                                                            <input type="text" pattern="[0-9]{5,7}" class="form-control"
                                                                name="precio" id="precioid" maxlength="7"
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusTippVenta">Tipo Venta</label>
                                                            <select name="tipoventa" class="form-select"
                                                                id="tipoVenta_selecid" style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                                <option value="Al contado">Al contado</option>
                                                                <option value="Con crédito">Con crédito</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="contacto"
                                                                class="bmd-label-floating labelBusqueda">Conyuge</label>
                                                            <input type="text" pattern="[a-zA-Z]{10,150}"
                                                                class="form-control" name="contacto" id="contactoid"
                                                                disabled maxlength="150" style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top:15px;">
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Ruat</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="CheckRuatid"
                                                                name="checkRuat">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Poliza de importación</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="CheckPolizaid"
                                                                name="checkPoliza">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Soat
                                                            </label></b>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="CheckSoatid"
                                                                name="checkSoat">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Placa</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="CheckPlacaid"
                                                                name="checkPlaca">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Resolución de tránsito</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="CheckTransitoid"
                                                                name="checkTransito">
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="text-center" style="margin-top: 40px; text-align:center;">
                                                    <button type="button" class="btn btn-success" name="editV"
                                                        id="idEditVe"
                                                        style="margin:auto;font-size:15px;padding: 5px;">Guardar
                                                    </button>
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="modalVadd" tabindex="-1" aria-labelledby="modelTitleId"
                                aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="font-size:16px;">Añadir vehiculo</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body" style="text-align:center;">
                                            <div class="row" style="text-align:center; margin-top:0px;">
                                                <input type="text" name="id" id="id_cliente" maxlength="16" value=""
                                                    hidden>
                                                <br>
                                                <div class="row">
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusMarca">Marca</label>
                                                            <select name="tipoMarca" class="form-select"
                                                                id="marca_selec" style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                                <?php
                                                                require_once '../scripts/conexion.php';
                                                                $sql = "SELECT distinct marca from vehiculo order by marca";
                                                                $sentencia = $con->prepare($sql);
                                                                $sentencia->execute();
                                                                $resultado = $sentencia->fetchAll();
                                                                foreach ($resultado as $marcas) : ?>
                                                                <option value="<?php echo $marcas["marca"]; ?>">
                                                                    <?php echo $marcas["marca"]; ?>
                                                                </option>
                                                                <?php endforeach; ?>

                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusModelo">Modelo</label>
                                                            <select name="modelo" class="form-select" id="modelo_selec"
                                                                style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-4">
                                                        <div class="form-group">
                                                            <label for="modelo_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="modelo_otro"
                                                                id="modelo_autoOtro" maxlength="50" disabled
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusModelo">Tipo</label>
                                                            <select name="tipo" class="form-select" id="tipo_selec"
                                                                style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="modelo_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{3,50}"
                                                                class="form-control" name="tipo_otro" id="tipo_autoOtro"
                                                                maxlength="50" disabled style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusColor">Color</label>
                                                            <select name="color" class="form-select" id="color_selec"
                                                                style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="color_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[a-zA-Z\s]{4,50}"
                                                                class="form-control" name="color_otro"
                                                                id="color_autoOtro" maxlength="50" disabled
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusPas">#Pas</label>
                                                            <select name="numpas" class="form-select" id="numpas_selec"
                                                                style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="modelo_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[0-9]{1,2}" class="form-control"
                                                                name="num_otro" id="num_autoOtro" maxlength="2" disabled
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusCilindrada">Cil.</label>
                                                            <select name="cilindrada" class="form-select"
                                                                id="cilindrada_selec" style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="cilindrada_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[a-zA-Z0-9/.s]{4,8}"
                                                                class="form-control" name="cilindrada_otro"
                                                                id="cilindrada_autoOtro" maxlength="8" disabled
                                                                style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusPrecio">Precio</label>
                                                            <select name="precio" class="form-select" id="precio_selec"
                                                                style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="precio_otro"
                                                                class="bmd-label-floating labelBusqueda">Otro</label>
                                                            <input type="text" pattern="[0-9]{5,6}" class="form-control"
                                                                name="precio_otro" id="precio_autoOtro" maxlength="6"
                                                                disabled style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="inputSearch"
                                                                class="bmd-label-floating labelBusqueda"
                                                                id="idLabelBusTippVenta">Tipo Venta</label>
                                                            <select name="tipoVenta" class="form-select"
                                                                id="tipoVenta_selec" style="font-size:14px;">
                                                                <option value="" selected>Seleccionar</option>
                                                                <option value="Al contado">Al contado</option>
                                                                <option value="Con crédito">Con crédito</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-12 col-md-3">
                                                        <div class="form-group">
                                                            <label for="contacto"
                                                                class="bmd-label-floating labelBusqueda">Conyuge</label>
                                                            <input type="text" pattern="[a-zA-Z]{10,150}"
                                                                class="form-control" name="contacto" id="idContacto"
                                                                maxlength="150" disabled style="font-size:14px;">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top:15px;">
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Ruat</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="idCheckRuat"
                                                                name="checkRuat">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Poliza de importación</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="idCheckPoliza"
                                                                name="checkPoliza">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Soat
                                                            </label></b>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="idCheckSoat"
                                                                name="checkSoat">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Placa</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="idCheckPlaca"
                                                                name="checkPlaca">
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <div class="form-check">
                                                            <label style="font-size:13px;"><b>
                                                                    Resolución de tránsito</b>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-1" style="margin-top:10px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input"
                                                                style="border: 1px solid rgb(51, 49, 49);"
                                                                type="checkbox" value="" id="idCheckTransito"
                                                                name="checkTransito">
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="text-center" style="margin-top: 40px; text-align:center;">
                                                    <button type="button" class="btn btn-danger" name="addAuto"
                                                        id="idAddAuto" style="margin:auto;font-size:15px;"><i
                                                            class="fas fa-car"></i>&nbsp;<i
                                                            class="fas fa-plus fa-xs"></i></button>
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <p class="text-center" style="margin-top: 40px;">
                            <button type="button" class="btn btn-success" id="boton_guardar_id"
                                style="padding:5px;font-size:14px;"><i class="far fa-save"></i> &nbsp;
                                GUARDAR</button>
                        </p>
            </div>
            </fieldset>
            </form>
            </div>

        </section>
    </main>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sweetalert2.min.js"></script>
    <script src="js/home.js"></script>
    <script src="js/selectsNuevaVenta.js"></script>
    <script src="js/datosVenta.js"></script>



</body>

</html>