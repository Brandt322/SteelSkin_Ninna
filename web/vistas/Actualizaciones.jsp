<%-- 
    Document   : Actualizaciones
    Created on : 26 may. 2023, 15:57:14
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="css/estilos1.css" rel="stylesheet" type="text/css"/>
    <title>Actualizaciones</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <img src="img/Logo.svg" alt="logo" width="56" height="56"/>
      <a class="navbar-brand text-white" href="#"><h2>Steel<span class="h2 text-warning">Skin / Ninna</span></h2></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
              <li class="nav-item active">
                  <a class="nav-link" href="./Controlador?accion=home"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="./Controlador?accion=marcas">Marcas</a>
              </li>                   
              <li class="nav-item">
                  <a class="nav-link" href="./Controlador?accion=carrito"><i class="fas fa-cart-plus">(<label style="color: darkorange">${cont}</label>)</i> Lista de solicitudes</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" ${mostrarProductos ? '' : 'style="display:none;"'} href="./Controlador?accion=NuevoProducto">Productos</a>
              </li> 
              <li class="nav-item">
                  <a class="nav-link" href="./Controlador?accion=actualizaciones">Ultimas actualizaciones</a>
              </li> 
          </ul>                              
          <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
              <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fas fa-user-tie"></i> ${logueo}</a>
              <div class="dropdown-menu text-center dropdown-menu-right">
                  <a class="dropdown-item" href="#"><img src="img/prev-foto.png" alt="60" height="60"/></a>                        
                  <a class="dropdown-item" href="#">${user}</a>
                  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="Controlador?accion=MisCompras">Mis compras</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
              </div>
          </ul>     
      </div>
    </nav>
    <!-- Modal Iniciar Session o Registrarse -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="container col-lg-9">                   
                <div class="modal-content">                   
                    <div class="pr-2 pt-1">                         
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>                    
                    </div>
                    <div class="text-center">                         
                        <img src="img/logo_user.png" width="100" height="100">                         
                    </div>
                    <div class="modal-header text-center">                      
                        <ul class="nav nav-pills">                           
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="pill" href="#pills-iniciar">Iniciar Sesion</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="pill" href="#pills-registrar">Registrarse</a>
                            </li>                          
                        </ul>  
                    </div>
                    <div class="modal-body"> 
                        <div class="tab-content" id="pills-tabContent">
                            <!-- Iniciar Session -->
                            <div class="tab-pane fade show active" id="pills-iniciar" role="tabpanel">
                                <form action="Controlador">
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="txtpass" class="form-control" placeholder="Password">
                                    </div>                                   
                                    <button type="submit" name="accion" value="Validar" class="btn btn-outline-danger btn-block">Iniciar</button>
                                </form>
                            </div>
                            <!-- Registrarse -->
                            <div class="tab-pane fade" id="pills-registrar" role="tabpanel">
                                <form action="Controlador">                               
                                    <div class="form-group">
                                        <label>Nombres</label>
                                        <input type="text" name="txtnom" class="form-control" placeholder="Pepa Pig">
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" name="txtemail" class="form-control" placeholder="email@example.com">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" name="txtpass" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label>Telefono</label>
                                        <input type="number" maxlength="8" name="txttelefono" class="form-control" placeholder="71852147">
                                    </div>
                                    <div class="form-group">
                                      <label for="txtdire">Distrito</label>
                                      <select class="form-select" name="txtdire" id="txtdire">
                                          <option value="Ate">Ate</option>
                                          <option value="Huaycan">Huaycan</option>
                                          <option value="Chosica">Chosica</option>
                                      </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="txttipo">Tipo de usuario</label>
                                        <select class="form-select" name="txttipo" id="txttipo">
                                          <option value="Consultor">Consultor</option>
                                          <option value="Cliente">Cliente</option>
                                        </select>
                                    </div>
                                    <button type="submit" name="accion" value="Registrar" class="btn btn-outline-danger btn-block">Crear Cuenta</button>
                                </form>
                            </div>                          
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
      <div class="card m-3" style="max-width: 540px;">
      <div class="row g-0">
        <div class="col-md-4">
          <img src="img/Post_photo.png" class="img-fluid rounded-start" alt="post">
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <h5 class="card-title">ésika actualización marzo</h5>
            <p class="card-text">Enterate de todos los productos que se habilitaron para este campaña y descubre nuevas experiencias</p>
            <p class="card-text"><small class="text-muted">Ultima actualización 3 de marzo</small></p>
          </div>
        </div>
      </div>
      </div>
      <div class="card m-3" style="max-width: 540px;">
        <div class="row g-0">
          <div class="col-md-4">
            <img src="img/Post_photo.png" class="img-fluid rounded-start" alt="post">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">lbel actualización abril</h5>
              <p class="card-text">El mes de abril revive productos de antaño.</p>
              <p class="card-text"><small class="text-muted">Ultima actualización 5 de abril</small></p>
            </div>
          </div>
        </div>
      </div>
      <div class="card m-3" style="max-width: 540px;">
        <div class="row g-0">
          <div class="col-md-4">
            <img src="img/Post_photo.png" class="img-fluid rounded-start" alt="post">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">cyzone actualización mayo</h5>
              <p class="card-text">El mes de la madre significa para nosotros hoy mas que nunca, enterate de los productos para ella.</p>
              <p class="card-text"><small class="text-muted">Ultima actualizacion 1 de mayo</small></p>
            </div>
          </div>
        </div>
      </div>
    </div>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/index.js" type="text/javascript"></script>
  </body>
</html>
