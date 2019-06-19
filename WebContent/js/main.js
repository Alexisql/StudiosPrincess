function Carga(url, id, table) {
    //Creamos un objeto dependiendo del navegador
    var objeto;
    if (window.XMLHttpRequest) {
        //Mozilla, Safari, etc
        objeto = new XMLHttpRequest();
    }
    else if (window.ActiveXObject) {
        //Nuestro querido IE
        try {
            objeto = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try { //Version mas antigua
                objeto = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) { }
        }
    }
    if (!objeto) {
        alert("No ha sido posible crear un objeto de XMLHttpRequest");
    }
    //Cuando XMLHttpRequest cambie de estado, ejecutamos esta funcion
    objeto.onreadystatechange = function () {
        cargarobjeto(objeto, id, table)
    }
    objeto.open('GET', url, true) // indicamos con el método open la url a cargar de manera asíncrona
    objeto.send(null) // Enviamos los datos con el metodo send
   
}

function cargarobjeto(objeto, id, table) {
    if (objeto.readyState == 4){
        document.getElementById(id).innerHTML = objeto.responseText
        tab(table);
    } //si se ha cargado completamente
        
}

function cambiar(text){
    document.getElementById('content').innerHTML = text;
}

$(document).ready(function () {
    $('#Jtabla').DataTable({
        
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
    });
})

/*
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {
    
        skel
            .breakpoints({
                xlarge:	'(max-width: 1680px)',
                large:	'(max-width: 1280px)',
                medium:	'(max-width: 980px)',
                small:	'(max-width: 736px)',
                xsmall:	'(max-width: 480px)'
            });
    
        $(function() {
    
            var	$window = $(window),
                $body = $('body'),
                $wrapper = $('#page-wrapper'),
                $banner = $('#banner'),
                $header = $('#header');
    
            // Disable animations/transitions until the page has loaded.
                $body.addClass('is-loading');
    
                $window.on('load', function() {
                    window.setTimeout(function() {
                        $body.removeClass('is-loading');
                    }, 100);
                });
    
            // Mobile?
                if (skel.vars.mobile)
                    $body.addClass('is-mobile');
                else
                    skel
                        .on('-medium !medium', function() {
                            $body.removeClass('is-mobile');
                        })
                        .on('+medium', function() {
                            $body.addClass('is-mobile');
                        });
    
            // Fix: Placeholder polyfill.
                $('form').placeholder();
    
            // Prioritize "important" elements on medium.
                skel.on('+medium -medium', function() {
                    $.prioritize(
                        '.important\\28 medium\\29',
                        skel.breakpoint('medium').active
                    );
                });
    
            // Scrolly.
                $('.scrolly')
                    .scrolly({
                        speed: 1500,
                        offset: $header.outerHeight()
                    });
    
            // Menu.
                $('#menu')
                    .append('<a href="#menu" class="close"></a>')
                    .appendTo($body)
                    .panel({
                        delay: 500,
                        hideOnClick: true,
                        hideOnSwipe: true,
                        resetScroll: true,
                        resetForms: true,
                        side: 'right',
                        target: $body,
                        visibleClass: 'is-menu-visible'
                    });
    
            // Header.
                if (skel.vars.IEVersion < 9)
                    $header.removeClass('alt');
    
                if ($banner.length > 0
                &&	$header.hasClass('alt')) {
    
                    $window.on('resize', function() { $window.trigger('scroll'); });
    
                    $banner.scrollex({
                        bottom:		$header.outerHeight() + 1,
                        terminate:	function() { $header.removeClass('alt'); },
                        enter:		function() { $header.addClass('alt'); },
                        leave:		function() { $header.removeClass('alt'); }
                    });
    
                }
    
        });
    
    })(jQuery);
    

function tab(id){
    $('#'+id).DataTable({   
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
    });
}