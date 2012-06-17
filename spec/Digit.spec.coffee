digit = require '../lib/digit'
sum = require '../lib/sum'

describe "Digit tests - list of 4 items", ->
    beforeEach ->
        @d = new digit.Digit([1,2,3], new sum.Sum)

    it "test construct", ->
        expect(-> new digit.Digit([1,2,3,4,5])).toThrow()
        expect(-> new digit.Digit([])).toThrow()

    it "test map", ->
        @d = @d.map((x) -> x + 1)
        expect(@d).toEqual([2,3,4])

    it "test fold", ->
        dLeft = @d.foldLeft(((x, y) -> x + y), 7)
        dRight = @d.foldRight(((x, y) -> x + y), 7)
        expect(dLeft).toEqual(13)
        expect(dRight).toEqual(13)

    it "test reduce", ->
        dLeft = @d.reduceLeft(((x, y) -> x + y))
        dRight = @d.reduceRight(((x, y) -> x + y))
        expect(dLeft).toEqual(6)
        expect(dRight).toEqual(6)

    it "test measure", ->
        expect(@d.measure()).toEqual(6)
