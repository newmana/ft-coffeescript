cons = require './cons'

exports.compose = (f, g) ->
    return (x) -> f(g(x))

exports.sine = (x) ->
    return Math.sin(x)

exports.cube = (x) ->
    return x * x * x

exports.sineCube = exports.compose(exports.sine, exports.cube)

exports.map = (f, list) ->
    result = new cons.Cons()
    while (list?.head?)
        newValue = f(list.head)
        result = result.snoc(newValue)
        list = list.tail()
    return result
