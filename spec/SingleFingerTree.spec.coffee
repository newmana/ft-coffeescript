etree = require '../lib/emptyfingertree'
stree = require '../lib/singlefingertree'
dtree = require '../lib/deepfingertree'
digit = require '../lib/digit'

describe "Single Finger Tree", ->
    it "append two single trees", ->
        tree1 = new stree.SingleFingerTree(1)
        tree2 = new stree.SingleFingerTree(2)
        tree1 = tree1.append(tree2)
        expect(tree1.left).toEqual(new digit.Digit([1]))
        expect(tree1.tree).toEqual(new etree.EmptyFingerTree)
        expect(tree1.right).toEqual(new digit.Digit([2]))

