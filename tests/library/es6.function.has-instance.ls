{module, test} = QUnit
module \ES6

test 'Function#@@hasInstance' (assert)->
  assert.ok core.Symbol.hasInstance of Function::
  assert.ok Function[core.Symbol.hasInstance] ->
  assert.ok !Function[core.Symbol.hasInstance] {}