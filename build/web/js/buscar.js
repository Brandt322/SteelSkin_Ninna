/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

var delayTimer;

function filtrarProductos() {
  clearTimeout(delayTimer);
  delayTimer = setTimeout(function() {
    var searchTerm = $('#txtBuscar').val().toLowerCase();

    $('.producto').each(function() {
      var nombreProducto = $(this).find('.card-title').text().toLowerCase();

      if (nombreProducto.includes(searchTerm)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  }, 500);
}


