cons = require '../lib/cons'

describe "Cons", ->
    it "test default values", ->
        c = new cons.Cons()
        expect(c.head, null)
        expect(c.restArray, null)

    it "test default head", ->
        c = new cons.Cons(1)
        expect(c.head, 1)
        expect(c.restArray, null)

    it "test simple addition", ->
        c = new cons.Cons(1)
        c.cons(2)
        c.cons(3)
        console.log(c)

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
