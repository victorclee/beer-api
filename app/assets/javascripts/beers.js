document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      beers: [],
      newBeerName: '',
      newBeerStyle: '',
      newBeerAlcohol: ''
    },
    mounted: function () {
      $.get('/api/v1/beers.json', function (beerInfo) {
        this.beers = beerInfo;
      }.bind(this));
    },
    methods: {
      addBeer: function() {
        var params = {
                      name: this.newBeerName,
                      style: this.newBeerStyle,
                      alcohol: this.newBeerAlcohol
                      };
        $.post('/api/v1/beers.json', params, function(newBeer){
          this.beers.push(newBeer);
          this.newBeerName = '';
          this.newBeerStyle = '';
          this.newBeerAlcohol = '';
        }.bind(this));                  
      }
    }
  });
});