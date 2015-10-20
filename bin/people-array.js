'use strict';

var loadPeople = require('../lib/people.js');

loadPeople(function(people) {
  var count =  people.reduce((m, p) => m + 1, 0);
  console.log('count: ', count);
});
