const app = new Vue({
    el: '#app',
    data: {
        nomeRisorsa : GetParentResourceName(),

        config : [],

        listaStili : []
    },

    methods: {
        postMessage(name, table) {
            $.post(`https://${this.nomeRisorsa}/${name}`, JSON.stringify(table));
        },


        setImmagine(stile)  {
            var stileTrovato = this.listaStili.find((item) => item.nome === stile);
            return {
                backgroundImage : `url(./img/${stileTrovato.image})`
            }
        },

        play(id) {
            this.postMessage("play", {id : id});
            $("#app").fadeOut(500);
            this.postMessage("close")
        }
    }
});


window.addEventListener('message', function(event) {
    var data = event.data;
    if (data.type === "OPEN") {
        $("#app").fadeIn(500);
    }else if(data.type === "SET_CONFIG") {
        app.config = data.config;
        app.listaStili = data.config.Stili;
    }
})
