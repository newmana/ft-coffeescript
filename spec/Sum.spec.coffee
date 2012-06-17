sum = require '../lib/sum'

describe "Functional utilities", ->
    beforeEach ->
        @a = new sum.Sum

    it "test monoid property 0", ->
        expect(@a.zero, 0)

    it "test monoid operation plus", ->
        x = Math.random() * 100
        y = Math.random() * 100
        expect(@a.monoidOp(x, y), x + y)

    it "test using native reduce methods", ->
        expect([1,2,3].reduce(@a.monoidOp)).toBe(6)
