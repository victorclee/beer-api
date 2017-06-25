document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      beers: [],
      newBeerName: '',
      newBeerStyle: '',
      newBeerAlcohol: '',
      errors: [],
      nameFilter: ''
    },
    mounted: function () {
      $.get('/api/v1/beers.json', function(beerInfo) {
        this.beers = beerInfo;
      }.bind(this));
    },
    methods: {
      isValidBeer: function(inputBeer) {
        return inputBeer.name.indexOf(this.nameFilter) !== -1
      },
      addBeer: function() {
        this.errors = [];
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
        }.bind(this)).fail( function(response) {
          this.errors = (response.responseJSON.errors);
        }.bind(this));                  
      },
      deleteBeer: function(beer) {
      //   $.delete('/api/v1/beers.json', index, function(data){
      //     this.beers.splice(index, 1);
      //     var index = this.beers.indexOf(beer);
      //   }.bind(this));
      }
    }
  });
});