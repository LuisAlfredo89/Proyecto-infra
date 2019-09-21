$(document).ready(function(){

validar();

function validar(){

  var urlParams=new URLSearchParams(window.location.search);
  var objeto=location.pathname.substring(location.pathname.lastIndexOf("/")+1);
  var Tipo_de_usuario= urlParams.get('Tipo_de_usuario');

  const datos={
    objeto:objeto,
    Tipo_de_usuario:Tipo_de_usuario,

  }
console.log(datos.objeto, validar);
  $.ajax({
    type:"GET",
    url:"../Servicios Select Id/ValidarPermisos.php",
    data:datos,
    success:function (r){

      let validar='';
      let Objeto='';
      let tipo_de_usuario='';
      r.forEach(element => {
        validar+=element.valido,
        tipo_de_usuario+=element.tipo_de_usuario,
        Objeto+=element.Id_objeto
      });


  if(validar!=1){
      window.location.href='InicioSesion.html';
    }
console.log(validar);
  }

});

  }
})
