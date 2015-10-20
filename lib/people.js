'use strict';

var Person = require('./person.js');

var loadPeople = function loadPeople(callback) {
  var peoplePromise = new Promise(function(resolve, reject) {
    var people = [];
    var fs = require('fs');
    var parse = require('csv').parse;
    var parser = parse({columns: true});

    var input = fs.createReadStream('data/people.csv');
    input.on('error', e => reject(e));

    parser.on('readable', function(){
      var record;
      while(record = parser.read()) { // jshint ignore:line
        people.push(new Person(record));
      }
    });

    parser.on('error', e => reject(e));
    parser.on('finish', () => resolve(people));
    input.pipe(parser);
  }).then(callback).catch(console.error);

};

module.exports = loadPeople;
