etree = require './emptyfingertree'
stree = require './singlefingertree'
dtree = require './deepfingertree'
ftree = require './fingertree'
digit = require '../lib/digit'

exports.SingleFingerTree = class SingleFingerTree extends ftree.FingerTree
    constructor: (@value) ->

    append: (tree) ->
        if (tree instanceof etree.EmptyFingerTree)
            return this
        else if (tree instanceof stree.SingleFingerTree)
            return new dtree.DeepFingerTree(new digit.Digit([this.value]), new etree.EmptyFingerTree,
                new digit.Digit([tree.value]))
        else if (tree instanceof dtree.DeepFingerTree)
            return null

    empty: ->
        false