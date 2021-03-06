cons = require '../lib/cons'

describe "Cons", ->
    it "test default values", ->
        c = new cons.Cons()
        expect(c.head).toBe(null)
        expect(c.restArray).toBe(null)

    it "test default head", ->
        c = new cons.Cons(1)
        expect(c.head).toBe(1)
        expect(c.restArray).toBe(null)

    it "test simple cons", ->
        c = new cons.Cons(1)
        expect(c.head).toBe(1)
        expect(c.restArray).toBe(null)
        c = c.cons(2)
        c = c.cons(3)
        expect(c.head).toBe(3)
        expect(c.tail().head).toBe(2)
        expect(c.tail().tail().head).toBe(1)
        expect(c.tail().tail().tail()).toBe(null)

    it "test simple snoc", ->
        c = new cons.Cons("a")
        c  = c.snoc("x").snoc("y")
        expect(c.head).toBe("a")
        expect(c.tail().head).toBe("x")
        expect(c.tail().tail().head).toBe("y")
