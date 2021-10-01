<template>
    <div class="Imagenes">
        <form action="">
            <!-- <input type="file" name='route[image_route]'/>
            <input type="file" name= 'route[image_route]'/>
            <input type="file" @change= "onFileSelected">  -->
            <label for="">height </label>
            <input type="text" id="height">
            <label for="latitude">latitude</label>
            <input type="text" id="latitude">
            <label for="longitud">longitud </label>
            <input ype="text" id="longitud">
            <label for="device">device</label>
            <input type="text" id="device">
            <label for="onFileSelected">onFileSelected</label>  
            <input type="file" @change="onFileSelected">
        </form>
    </div>
</template> 