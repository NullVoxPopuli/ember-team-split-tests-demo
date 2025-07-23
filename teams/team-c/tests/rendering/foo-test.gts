import { module, test } from 'qunit';
import { foo } from 'the-app/tests/helpers/example-helpers.ts';
import TeamC from 'the-app/components/team-c.gjs';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'ember-qunit';

module('team-c', function (hooks) {
  setupRenderingTest(hooks);

  test('c test', async function (assert) {
    assert.strictEqual(foo(), 'foo');

    await render(<template><TeamC /></template>);

    assert.dom().hasText('team c');
  });
});
