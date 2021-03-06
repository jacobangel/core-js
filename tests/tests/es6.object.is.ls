{module, test} = QUnit
module \ES6

test 'Object.is' (assert)->
  same = Object.is
  assert.ok typeof! same is \Function, 'is function'
  assert.strictEqual same.length, 2, 'arity is 2'
  assert.strictEqual same.name, \is, 'name is "is"'
  assert.ok /native code/.test(same), 'looks like native'
  assert.ok same(1 1), '1 is 1'
  assert.ok same(NaN, NaN), '1 is 1'
  assert.ok not same(0 -0), '0 isnt -0'
  assert.ok not same({} {}), '{} isnt {}'