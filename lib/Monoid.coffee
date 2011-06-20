class Monoid
  constructor: (@zero, @monoidOp) ->

class Sum extends Monoid
  constructor: ->
    super(0, (s1, s2) -> s1 + s2)

class Nil
  head: ->
    return null

  tail: ->
    return null

class Cons extends Nil
  constructor: (@head, @restArray) ->

  head: ->
    @head

  tail: ->
    @restArray

  cons: (element) ->
    new Cons(element, this)

a = new Sum
console.log(a.zero)
console.log(a.monoidOp(1, 1))
b = new Cons("a", new Nil)
b = b.cons("b").cons("c")
console.log(b)
console.log(b.head)
console.log(b.tail())

