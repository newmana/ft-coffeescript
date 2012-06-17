util = require '../lib/util'

describe "Functional utilities", ->
    it "test composing functions", ->
        expect(sine(cube(3)), util.compose(sine, cube)(3))

sine = (x) ->
    return Math.sin(x)

cube = (x) ->
    return x * x * x

#b = new cons.Cons("a", null)
#b = b.cons("b").cons("c")
#console.log(b)
#console.log(b.head)
#b = b.tail()
#console.log(b)
#b = b.tail()
#console.log(b)
#b = new cons.Cons("a")
#b = b.cons("b").cons("c")
#console.log(b)
#b.snoc("x")
#console.log(b)
#console.log(b.tail())
#console.log(b.head?)
#c = new prior.Prior
#console.log(c.monoidOp(2, 3))
#console.log(c.monoidOp(3, 2))
#d = new key.Key("abc")
#console.log(d.key)
#e = new key.NoKey()
#f = new key.NoKey()
#console.log(e.compareTo(f))
#g = new key.KeyMonoid(new key.NoKey())
#console.log(g.monoid)
#g = new cons.Cons()
#g = g.cons(2)
#g = g.cons(3)
#g = g.snoc(5)
#console.log(g)
#console.log(g.tail())
#console.log(util.map(util.cube, g))