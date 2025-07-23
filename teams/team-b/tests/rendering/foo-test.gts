import { module, test } from 'qunit';
import { foo } from 'the-app/tests/helpers/example-helpers.ts';
import TeamB from 'the-app/components/team-b.gjs';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'ember-qunit';

module('team-b', function (hooks) {
  setupRenderingTest(hooks);

  test('b test', async function (assert) {
    assert.strictEqual(foo(), 'foo');

    await render(<template><TeamB /></template>);

    assert.dom().hasText('team b');
  });
});
