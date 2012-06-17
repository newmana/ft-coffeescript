sum = require '../lib/sum'

describe "Functional utilities", ->
    it "test composing functions", ->
        a = new sum.Sum
        expect(a.zero, 0)

    it "test composing functions", ->
        a = new sum.Sum
        x = Math.random() * 100
        y = Math.random() * 100
        expect(a.monoidOp(x, y), x + y)
