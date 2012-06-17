exports.Digit = class Digit
    constructor: (@list, @monoid) ->
        if (@list.length < 1 || @list.length > 4) then throw ("Digit must be 1-4 in length")

    map: (f) ->
        @list.map(f)

    foldLeft: (f, initialValue) ->
        f(initialValue, this.reduceLeft(f))

    foldRight: (f, initalValue) ->
        f(initalValue, this.reduceRight(f))

    reduceLeft: (f) ->
        @list.reduce(f)

    reduceRight: (f) ->
        @list.reduceRight(f)

    measure: ->
        this.foldLeft(@monoid.monoidOp, @monoid.zero)


