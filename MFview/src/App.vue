<template>
  <div class="hello">
    <body>
      <header>
            <h1 class="headertitle">Recorrido</h1><br>
            <h1 class="headercompany">Compañia</h1><br>
             <div class="labelsinrow">
                <span><label id="lgreenhouse">Invernadero: </label></span>
                <span><label id="lgreenhousechange">Invernadero</label></span>
                <span><label id="ldate">Fecha y hora: </label></span>
                <span><label id="ldatechange">Fecha y hora</label></span>
                <span><label id="lcubot">Cubot: </label></span>
                <span><label id="lcubotchange">Cubot</label></span>
             </div>
      </header>
        <div class="imgrecorrido">
         <article>
          <img src="./assets/recorridoejemplo.png">
         </article>
         </div>
      <footer>
         <button id="btnback">{{btnback}} </button>
         <button id="btnhome">{{btnhome}}</button>
         <button id="btnnext">{{btnnext}} </button>
      </footer>
    </body>
  </div>
</template>
<script>
export default {
  name: 'msg',
  data () {
    return {
      btnback: 'Recorrido Anterior',
      btnhome: 'Regresar',
      btnnext: 'Recorrido Siguiente'
    }
  }
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
body {
    flex-direction: column;
    background: #a1a1a152;
}
h1.headertitle{
  text-align: center;
  font-size: 20px;
  font-family: "Raleway", Helvetica, Arial, sans-serif;
  font-weight: 600;
  padding-top: 30px;
}
header{
  text-align: center;
}
h1.headercompany{
  text-align: center;
}
ul {
  list-style-type: none;
  padding: 0;
}
.imgrecorrido{
    width: auto;
    height: auto;
    border-width: 1px;
    border-style: solid;
    border-color: black;
}
.imgrecorrido img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 80%;
}
footer{
  position: fixed;
  bottom: 0;
  width: 100%;
  height: 40px;
}
button{
  font-size: 25px;
  background: rgb(235, 64, 52,0);
  color:rgb(0, 0, 0 );
  transition: all 0.2s;
  display: inline-block;
  vertical-align: auto;
  text-align: center;
  margin: auto;
  padding: auto;
  border-radius: 10px;
}
#btnback{
  float:left;
  margin-left: 20px;
}
#btnhome{
  margin-left: 25%
}
#btnnext{
float: right;
margin-right: 70px;
}
#lgreenhouse{
  float: left;
  margin-left: 30px;
}
#lgreenhousechange{
  float: left;
  margin-left: 5px;
}
#lcubot{
  float: right;
}
#lcubotchange{
  float: right;
  margin-right: 30px;
}
</style>
