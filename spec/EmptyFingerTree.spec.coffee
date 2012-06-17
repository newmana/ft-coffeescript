eTree = require '../lib/emptyfingertree'
sTree = require '../lib/singlefingertree'
dTree = require '../lib/deepfingertree'

describe "Empty Finger Tree", ->
    beforeEach ->
        @emptyTree = new eTree.EmptyFingerTree
        @singleTree = new sTree.SingleFingerTree
        @deepTree = new dTree.DeepFingerTree

    it "test empty tree is identity", ->
        expect(@emptyTree.append(@emptyTree)).toEqual(@emptyTree)
        expect(@emptyTree.append(@singleTree)).toEqual(@singleTree)
        expect(@emptyTree.append(@deepTree)).toEqual(@deepTree)

