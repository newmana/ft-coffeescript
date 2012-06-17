fingertree = require './fingertree'

exports.EmptyFingerTree = class EmptyFingerTree extends fingertree.FingerTree
    constructor: ->

    append: (tree) ->
        tree

    empty: ->
        true