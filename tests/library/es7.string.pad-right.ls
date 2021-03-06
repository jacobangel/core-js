'use strict';
{module, test} = QUnit
module \ES7

test 'String#padRight' (assert)->
  {padRight} = core.String
  assert.ok typeof! padRight is \Function, 'is function'
  assert.strictEqual padRight(\abc 5), 'abc  '
  assert.strictEqual padRight(\abc 4 \de), 'abcd'
  assert.strictEqual padRight(\abc), \abc
  assert.strictEqual padRight(\abc 5 '_'), 'abc__'
  assert.strictEqual padRight('', 0), ''
  assert.strictEqual padRight(\foo 1), \foo
  if !(-> @)!
    assert.throws (-> padRight null, 0), TypeError
    assert.throws (-> padRight void, 0), TypeError