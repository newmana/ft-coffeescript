cons = require './cons'

exports.compose = (f, g) ->
    return (x) -> f(g(x))
