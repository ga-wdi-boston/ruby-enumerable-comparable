'use strict';

var City = function(h) {
  Object.keys(h).forEach(k => this[k] = h[k]);
};

module.exports = City;
