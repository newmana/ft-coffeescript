cons = require './cons'

exports.compose = (f, g) ->
    return (x) -> f(g(x))

exports.map = (f, list) ->
    result = new cons.Cons()
    while (list?.head?)
        newValue = f(list.head)
        result = result.snoc(newValue)
        list = list.tail()
    return result
