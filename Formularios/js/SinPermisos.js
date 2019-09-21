$(document).ready(function(){

permiso();

function permiso(){

  var urlParams=new URLSearchParams(window.location.search);
  var id_Sesion= urlParams.get('IdSesion');

  const datos={
    id_Sesion:id_Sesion,

  }

  $.ajax({
    type:"GET",
    url:"../Servicios Select Id/SinPermisos.php",
    data:datos,
    success:function (r){

      let validar='';
      let id='';
      let FechaFin='';
      r.forEach(element => {
        validar+=element.valido,
        id+=element.IdSesion,
        FechaFin+=element.FechaFin
      });


  if(FechaFin!="0000-00-00"){
      window.location.href='InicioSesion.html';
    }
console.log(validar);
  }

});

}
})
