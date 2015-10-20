'use strict';

var City = require('./city.js');

var loadCities = function loadcities(callback) {
  var citiesPromise = new Promise(function(resolve, reject) {
    var cities = [];
    var fs = require('fs');
    var parse = require('csv').parse;
    var parser = parse({columns: true});

    var input = fs.createReadStream('data/cities.csv');
    input.on('error', e => reject(e));

    parser.on('readable', function(){
      var record;
      while(record = parser.read()) { // jshint ignore:line
        cities.push(new City(record));
      }
    });

    parser.on('error', e => reject(e));
    parser.on('finish', () => resolve(cities));
    input.pipe(parser);
  }).then(callback).catch(console.error);

};

module.exports = loadCities;
