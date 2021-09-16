<template>
  <div>
    <table>
      <tbody>
        <tr v-for="ran in random" :key="ran.id">
            <td>{{ ran.value }}</td>
        </tr>
    </tbody>
  </table>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data(){
    return{
      random:null
    }
  },
  mounted(){
    this.getRandom();
  },
  methods:{
    getRandom(){
      axios
      .get('https://api.chucknorris.io/jokes/random').then(response => {console.log(response)
      this.random=response.data
      })
      .catch(e => console.log(e))
    }
  }
}
</script>