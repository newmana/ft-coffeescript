exports.Nil = class Nil
  head: ->
    return null

  tail: ->
    return null

exports.Cons = class Cons extends exports.Nil
  constructor: (@head, @restArray) ->

  head: ->
    @head

  tail: ->
    @restArray

  cons: (element) ->
    new Cons(element, this)
