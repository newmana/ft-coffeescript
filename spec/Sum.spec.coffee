sum = require '../lib/sum'

describe "Functional utilities", ->
    it "test monoid property 0", ->
        a = new sum.Sum
        expect(a.zero, 0)

    it "test monoid operation plus", ->
        a = new sum.Sum
        x = Math.random() * 100
        y = Math.random() * 100
        expect(a.monoidOp(x, y), x + y)
