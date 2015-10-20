'use strict';

var loadCities = require('../lib/cities.js');

loadCities(function(cities) {
  var count =  cities.reduce((m, p) => m + 1, 0);
  console.log('count: ', count);
});
