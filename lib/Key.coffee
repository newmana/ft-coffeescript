monoid = require './monoid'
comparable = require './comparable'

exports.Key = class Key
  constructor: (@key) ->

exports.NoKey = class NoKey extends comparable.Comparable
  compareTo: (v) ->
    if v instanceof exports.NoKey then 0 else 1

exports.KeyMonoid = class KeyMonoid extends monoid.Monoid
  constructor: (@key) ->
    @monoid = new monoid.Monoid(exports.NoKey, exports.KeyMonoid.nextKey)

  nextKey: (v1, v2) ->
    if v2.compareTo(exports.NoKey) == 0 then v1 else v2

