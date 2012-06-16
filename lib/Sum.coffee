monoid = require './monoid'

exports.Sum = class Monoid extends monoid.Monoid
  constructor: ->
    super(0, (s1, s2) -> s1 + s2)
