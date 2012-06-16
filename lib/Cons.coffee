exports.Cons = class Cons
    constructor: (@head, @restArray) ->
        @head ?= null
        @restArray ?= null

    head: ->
        @head

    tail: ->
        @restArray

    cons: (element) ->
        new Cons(element, this)

    snoc: (element) ->
        list = this
        while (list?.restArray?)
            list = list.restArray
        if !list.head? then list.head = element else list.restArray = new Cons(element)
        return this

