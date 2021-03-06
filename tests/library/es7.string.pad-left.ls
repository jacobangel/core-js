'use strict';
{module, test} = QUnit
module \ES7

test 'String#padLeft' (assert)->
  {padLeft} = core.String
  assert.ok typeof! padLeft is \Function, 'is function'
  assert.strictEqual padLeft(\abc 5), '  abc'
  assert.strictEqual padLeft(\abc 4 \de), \eabc
  assert.strictEqual padLeft(\abc),  \abc
  assert.strictEqual padLeft(\abc 5 '_'), '__abc'
  assert.strictEqual padLeft('' 0), ''
  assert.strictEqual padLeft(\foo 1), \foo
  if !(-> @)!
    assert.throws (-> padLeft null, 0), TypeError
    assert.throws (-> padLeft void, 0), TypeError