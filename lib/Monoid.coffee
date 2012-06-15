class Monoid
  constructor: (@zero, @monoidOp) ->

class Sum extends Monoid
  constructor: ->
    super(0, (s1, s2) -> s1 + s2)

class Prior extends Monoid
  constructor: ->
    super(Number.MIN_VALUE, (d1, d2) ->
      if d1 > d2
        return d1
      else
        return d2
    )

class Key
  constructor: (@key) ->

class Comparable
  compareTo: (v) ->
    throw "Not implemented"

class NoKey extends Comparable
  compareTo: (v) ->
    if v instanceof NoKey
      return 0
    else
      return 1

class KeyMonoid extends Monoid
  constructor: (@key) ->
    @monoid = new Monoid(NoKey, nextKey)

  nextKey: (v1, v2) ->
    if v2.compareTo(NoKey) == 0
      return v1
    else
      return v2

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

compose = (f, g) ->
  return (x) -> f(g(x))

sine = (x) ->
  return Math.sin(x)

cube = (x) ->
  return x * x * x

sineCube = compose(sine, cube)

console.log(cube(3))
console.log(sine(30))
console.log(sineCube(10))

a = new Sum
console.log(a.zero)
console.log(a.monoidOp(1, 1))
b = new Cons("a", new Nil)
b = b.cons("b").cons("c")
console.log(b)
console.log(b.head)
console.log(b.tail())
c = new Prior
console.log(c.monoidOp(2, 3))
console.log(c.monoidOp(3, 2))
d = new Key("abc")
console.log(d.key)
e = new NoKey()
f = new NoKey()
console.log(e.compareTo(f))
#g = new KeyMonoid(new NoKey())
#console.log(g.monoid)