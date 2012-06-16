util = require './util'
cons = require './cons'
sum = require './sum'
prior = require './prior'
key = require './key'

console.log(util.cube(3))
console.log(util.sine(30))
console.log(util.sineCube(10))

a = new sum.Sum
console.log(a.zero)
console.log(a.monoidOp(1, 99))
b = new cons.Cons("a", new cons.Nil)
b = b.cons("b").cons("c")
console.log(b)
console.log(b.head)
b = b.tail()
console.log(b)
b = b.tail()
console.log(b)
console.log(b.tail().tail()?)
console.log(b.head?)
c = new prior.Prior
console.log(c.monoidOp(2, 3))
console.log(c.monoidOp(3, 2))
d = new key.Key("abc")
console.log(d.key)
e = new key.NoKey()
f = new key.NoKey()
console.log(e.compareTo(f))
g = new key.KeyMonoid(new key.NoKey())
console.log(g.monoid)
g = new cons.Cons()
g = g.cons(2)
g = g.cons(3)
console.log(g)
console.log(util.map(util.cube, g))