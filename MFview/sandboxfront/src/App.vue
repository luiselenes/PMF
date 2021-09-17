<template>
  <div class="hello">
    <h1>hollaaa</h1>
    <button>{{btnback}} </button>
    <button>{{btnnext}} </button>
  </div>
</template>

<script>
export default {
  name: 'msg',
  data () {
    return {
      btnnext: 'Recorrido Anteriooor',
      btnback: 'Recorrido Siguiente'
    }
  }

}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
button{
  font-size: 30px;
  color:black;
  background:lightgray;
  display: inline-block;
  vertical-align: auto;
  text-align: center;
  padding: 15px;
}
</style>
