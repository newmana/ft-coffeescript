fingertree = require './fingertree'

exports.SingleFingerTree = class SingleFingerTree extends fingertree.FingerTree
    constructor: (@value) ->

    append: (tree) ->
        if (tree instanceof EmptyTree)
            return this
        else if (tree instanceof SingleFingerTree)
            return null
        else if (tree instanceof DeepFingerTree)
            return null

    empty: ->
        false