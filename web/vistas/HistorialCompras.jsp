<%-- 
    Document   : HistorialCompras
    Created on : 26 may. 2023, 21:56:31
    Author     : USUARIO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.steelskin.modelo.Compra"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>     
    <title>JSP Page</title>
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
                      <a class="nav-link" ${mostrarProductos ? '' : 'style="display:none;"'} href="./Controlador?accion=NuevoProducto">Productos</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" ${mostrarProductos ? '' : 'style="display:none;"'} href="./Controlador?accion=NuevoProducto">Productos</a>
                    </li>
                </ul>                                             
                <ul class="navbar-nav btn-group my-2 my-lg-0" role="group">
                    <a style="color: white; cursor: pointer" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fas fa-user-tie"></i> ${logueo}</a>
                    <div class="dropdown-menu text-center dropdown-menu-right">
                        <a class="dropdown-item" href="#"><img src="img/prev-foto.png" alt="60" height="60"/></a>                        
                        <a class="dropdown-item" href="#">${user}</a>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">${correo}</a>
                        <a class="dropdown-item" href="./Controlador?accion=Salir"> <i class="fas fa-arrow-right"> Salir</i></a>                        
                    </div>
                </ul>     
            </div>
        </nav> 
    <div class="container mt-4">
            <h1>Historial de Compras</h1>
            <div class="row">            
                <table class="table tab-pane">
                    <thead class="thead-light">
                        <tr class="text-center">
                            <th>Codigo Compra</th>                               
                            <th>Fecha de Compra</th>
                            <th>Monto</th>                                                   
                            <th>Codigo de Pago</th>                                                   
                            <th>Estado</th>                                                   
                            <th></th>                                                   
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${historial}">
                            <tr class="text-center">
                                <td>C00${p.getId()}</td>                                  
                                <td>${p.getFecha()}</td>
                                <td>${p.getMonto()}</td>                                                                                                       
                                <td>P00${p.getIdPago()}</td>                                                                                                       
                                <td>${p.getEstado()}</td>                                                                                                                                                                                                             
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>             
            </div>          
        </div>
                            <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
