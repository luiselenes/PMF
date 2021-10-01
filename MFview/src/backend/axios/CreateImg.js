const SERVER_URL = "27.0.0.1:3000";
Vue.use(Toasted);
new Vue({
    el:"#createimg",
    data:() => ({
        route:{
            height: "",
            latitude:"", 
            longitud:"",
            devices:"",
        },
    }),
    methods:{
        async save(){
            if(!this.route.height){
                return this.$toasted.show ("escriva una medida", {
                position:top-left,
                duration: 100,
            });
           
        }
//-*--------        ponerlos demas
    const payload = JSON.stringify(this.route);
    const url = SERVER_URL + "/route"
    const r = await fetch(url ,{
        method:"POST",
        body:payload,
        headers:{
            "content-type": "application/json"
        }
    })