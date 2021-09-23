<template>
    <div class="Imagenes">
        <form action="">
            <input type="file" name= 'route[image_route]'/>
            <input type="file" @change= "onFileSelected"> 
        </form>
    </div>
</template>

<script>
export default {
    name:'Image',
    data (){
        return{
        }
    },
    methods:{
        onFileSelected(event){
        console.log(event)
        }
   }
}
</script>
