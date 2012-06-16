monoid = require './monoid'

exports.Prior = class Prior extends monoid.Monoid
  constructor: ->
    super(Number.MIN_VALUE, (d1, d2) ->
      if d1 > d2 then d1 else d2
    )