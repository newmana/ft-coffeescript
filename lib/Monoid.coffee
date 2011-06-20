class Monoid
  constructor: (@zero, @monoidOp) ->

class Sum extends Monoid
  constructor: ->
    super(0, (s1, s2) -> s1 + s2)


a = new Size()
console.log(a.zero)
console.log(a.monoidOp(1, 1))