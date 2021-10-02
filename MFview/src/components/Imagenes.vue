<template>
    <div class="image">
        <form action="">
          <tbody>
            <ul>
                <li>
                    <h3>{{ab.id}}</h3>
                </li>
            </ul>
            </tbody>
        </form>
    </div>
</template> 

<script>
    const SERVER_URL = "27.0.0.1:3000/imagens/1";
    import axios from "axios"
    export default{
        data(){
            return{ 
                ab:null
                }    
        },
        mounted(){
            this.getTodos();
        },
        methods: {
            async getTodos(){
           const res= await axios.get(SERVER_URL);
            this.ab = res.data;
           //.then(response =>{
             //   this.ab =response.data
            }
        }
    
}
     
</script>
