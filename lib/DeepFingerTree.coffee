fingertree = require './fingertree'

exports.DeepFingerTree = class DeepFingerTree extends fingertree.FingerTree
    constructor: (@left, @tree, @right) ->

    append: (tree) ->
        if (tree instanceof EmptyTree)
            return this
        else if (tree instanceof SingleFingerTree)
            return null
        else if (tree instanceof DeepFingerTree)
            return null

    empty: ->
        false