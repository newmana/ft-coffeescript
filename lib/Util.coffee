cons = require './cons'

exports.compose = (f, g) ->
  return (x) -> f(g(x))

exports.sine = (x) ->
    return Math.sin(x)

exports.cube = (x) ->
    return x * x * x

exports.sineCube = exports.compose(exports.sine, exports.cube)

exports.map = (f, cons) ->
    result = new cons.Cons()
    while (cons.head?)
      newValue = f(cons.head)
      #result = result.cons(newValue)
      cons = cons.tail()
    return result

