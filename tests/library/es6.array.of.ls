{module, test} = QUnit
module \ES6

test 'Array.of' (assert)->
  assert.ok typeof! core.Array.of is \Function, 'is function'
  assert.strictEqual core.Array.of.length, 0, 'arity is 0'
  assert.deepEqual core.Array.of(1), [1]
  assert.deepEqual core.Array.of(1 2 3), [1 2 3]
  # generic
  F = !->
  inst = core.Array.of.call F, 1, 2
  assert.ok inst instanceof F
  assert.strictEqual inst.0, 1
  assert.strictEqual inst.1, 2
  assert.strictEqual inst.length, 2