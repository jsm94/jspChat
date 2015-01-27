/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$("#listado").load("modulos/listaMensajes.jsp?limit=30", function () {
    $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
});
setInterval(function () {
    var id = $(".mensaje").last().attr("name");
    var limite = 30;
    $.post("modulos/nuevoMensaje.jsp", {lastmsg: id, limit: limite}, function (result) {
        if (result > 0) {
            $('.mensaje').last().after($('<div>').load("modulos/listaMensajes.jsp?limit=" + 1, function () {
                if ($(".listaMensajes").prop("scrollTop") > $(".listaMensajes").prop("scrollHeight") - 550) {
                    $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
                }
            }));
        } else {
            console.log("No hay nuevos mensajes");
        }
    });
    /*$("#listado").load("modulos/listaMensajes.jsp");
     if ($(".listaMensajes").prop("scrollTop") > $(".listaMensajes").prop("scrollHeight") - 550) {
     $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
     }*/
}, 1000);

$("#botonEnvio").click(function () {
    var datos = $("#formEnvio").serializeArray();
    $.post("modulos/enviarMensaje.jsp", datos, function () {
        $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
    });
});