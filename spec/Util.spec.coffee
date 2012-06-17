util = require '../lib/util'

describe "Functional utilities", ->
    it "test composing functions", ->
        expect(sine(cube(3)), util.compose(sine, cube)(3))

sine = (x) ->
    return Math.sin(x)

cube = (x) ->
    return x * x * x
