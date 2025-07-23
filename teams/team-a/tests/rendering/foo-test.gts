import { module, test } from 'qunit';
import { foo } from 'the-app/tests/helpers/example-helpers.ts';
import TeamA from 'the-app/components/team-a.gjs';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'ember-qunit';

module('team-a', function (hooks) {
  setupRenderingTest(hooks);

  test('a test', async function (assert) {
    assert.strictEqual(foo(), 'foo');

    await render(<template><TeamA /></template>);

    assert.dom().hasText('team a');
  });
});
