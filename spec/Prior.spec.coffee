prior = require '../lib/prior'

describe "Prior", ->
    it "test monoid property 0", ->
        a = new prior.Prior
        expect(a.zero, Number.MIN_VALUE)

    it "test monoid operation plus", ->
        a = new prior.Prior
        y = Math.random() * 100
        x = y - 1
        z = y + 1
        expect(a.monoidOp(x, y), x)
        expect(a.monoidOp(y, x), x)
        expect(a.monoidOp(z, y), y)
        expect(a.monoidOp(y, z), y)
