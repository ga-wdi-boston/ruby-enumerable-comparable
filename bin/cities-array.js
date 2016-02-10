'use strict';

var loadCities = require('../lib/cities.js');

loadCities(function(cities) {
  console.log('count: ', cities.length);
});
