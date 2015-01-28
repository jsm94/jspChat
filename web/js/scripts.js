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
    $.post("nuevoMensaje", {"lastmsg": id, "limit": limite}, function (result) {
        if (result > 0) {
            $('.mensaje').last().after($('<div>').load("modulos/listaMensajes.jsp?limit=" + result, function () {
                if ($(".listaMensajes").prop("scrollTop") < $(".listaMensajes").prop("scrollHeight") - 200) {
                    $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
                }
            }));
        } /*else {
            console.log(result + " mensajes");
        }*/
    });
    /*$("#listado").load("modulos/listaMensajes.jsp");
     if ($(".listaMensajes").prop("scrollTop") > $(".listaMensajes").prop("scrollHeight") - 550) {
     $(".listaMensajes").prop({scrollTop: $(".listaMensajes").prop("scrollHeight")});
     }*/
}, 500);

$(document).ready(function () {
    $(window).keydown(function (event) {
        if (event.keyCode === 13) {
            if ($("#textoMensaje").val()) {
                var datos = $("#textoMensaje").serialize();
                $.post("modulos/enviarMensaje.jsp", datos, function () {
                    $("#textoMensaje").val("");
                });
            }
        }
    });
});

$("#botonEnvio").click(function () {
    var datos = $("#textoMensaje").serialize();
    $.post("modulos/enviarMensaje.jsp", datos, function () {
        $("#textoMensaje").val("");
    });
});