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
    <link rel="stylesheet" href="./css/estiloAsesores.css">
    <title>Actualizar_Asesor</title>
</head>

<body>
    <input type="text" name="id" id="id_usuario" maxlength="16" value="<?php echo base64_decode($proceso) ?>" hidden>
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
                        <a href="nuevoAsesor.php" style="font-size:15.5px!important;"><i class="fas fa-plus fa-fw"></i> &nbsp; REGISTRAR ASESOR</a>
                    </li>
                    <li>
                        <a href="listaAsesores.php" style="font-size:15.5px!important;"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE ASESORES</a>
                    </li>
                </ul>
            </div>

            <!-- TABLA REGISTRO-->
            <div class="container-fluid">
                <form action="" class="formulario" autocomplete="off" id="act_asesor">
                    <fieldset>
                        <legend><i class="fas fa-user-plus"></i> &nbsp; Actualizar Asesor</legend>
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="ci_asesor" class="bmd-label-floating">CI</label>
                                        <input type="text" pattern="[0-9-]{5,20}" class="form-control" name="carnet_asesor" id="ci_asesorinput" maxlength="20" required style="font-size:14px;"> 
                                    </div>
                                </div>
                                <div class="col-12 col-md-2">
                                    <div class="form-group">
                                        <label for="ci_extasesor" class="bmd-label-floating">Extensión</label>
                                        <input type="text" pattern="[A-Z.]{1,5}" class="form-control" name="extension_asesor" id="ci_extasesorinput" maxlength="5" required style="font-size:14px;">
                                    </div>
                                </div>
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="apP_asesor" class="bmd-label-floating">Apellido Paterno</label>
                                        <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" class="form-control" name="apellidoP_asesor" id="apP_asesor" maxlength="50" style="font-size:14px;">
                                    </div>
                                </div>
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="apM_asesor" class="bmd-label-floating">Apellido Materno</label>
                                        <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" class="form-control" name="apellidoM_asesor" id="apM_asesor" maxlength="50" required style="font-size:14px;">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="nom_asesor" class="bmd-label-floating">Nombre</label>
                                        <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" class="form-control" name="nombre_asesor" id="nom_asesor" maxlength="50" required style="font-size:14px;">
                                    </div>
                                </div>
                                <div class="col-12 col-md-2">
                                    <div class="form-group">
                                        <label for="cel_asesor" class="bmd-label-floating">Celular</label>
                                        <input type="text" pattern="[0-9()+]{8,16}" class="form-control" name="celular_asesor" id="cel_asesor" maxlength="16" required style="font-size:14px;">
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="form-group">
                                        <label for="dir_asesor" class="bmd-label-floating">Dirección</label>
                                        <input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ().,#\s-]{10,100}" class="form-control" name="direccion_asesor" id="dir_asesor" maxlength="100" required style="font-size:15px;">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="usuario_asesor" class="bmd-label-floating">Usuario</label>
                                        <input type="text" pattern="[a-zA-Z0-9s-]{4,15}" class="form-control" name="usuario_asesor" id="usuario_asesor" maxlength="15" required style="font-size:15px;">
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="form-group">
                                        <label for="tipo_usuario" class="bmd-label-floating">Tipo Usuario</label>
                                        <select class="form-select" required name="tipo_usu" id="tipoUsuario" style="font-size:15px;">
                                            <option value="Administrador">Administrador</option>
                                            <option value="Restringido">Restringido</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-3">
                                    <div class="form-group">
                                        <label for="estado_usuario" class="bmd-label-floating">Estado</label>
                                        <select class="form-select" required name="estado" id="estado" style="font-size:15px;">
                                            <option value="Activo">Activo</option>
                                            <option value="Inactivo">Inactivo</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <label for="curriculum_asesor" class="bmd-label-floating">Curriculum</label>
                                <div class="form-group curriculum reverse">
                                    <label for="" class="bmd-label-floating nombreArch" id="fileEnt"></label>
                                    <input type="file" class="inputFile" id="file" accept="application/pdf" name="hojaVida">
                                    <label for="file" class="bmd-label-floating botonInput">Seleccionar Archivo</label>
                                </div>
                            </div>
                            <label for="foto_cliente" class="bmd-label-floating">Croquis</label>
                            <div id="perfil" class="container">
                                <i id="icono" class="fa fa-upload"></i>
                                <img alt="perfil" class="foto">
                                <input type="file" id="subirImg" accept="image/jpeg,image/jpg" name="croquis">
                            </div>
                            <button type="button" class="col-1 btn btn-danger botonQuitaCroquis" id="quitaCroquis" hidden>
                                <i class="fas fa-trash fa-xs"></i></button>

                        </div>
                        <p class="text-center" style="margin-top: 40px;">
                            <button type="submit" class="btn btn-success" style="font-size:15px;""><i class="fas fa-user-edit"></i> &nbsp; ACTUALIZAR</button>
                        </p>
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
    <script src="js/actualizarAsesor.js"></script>
</body>

</html>