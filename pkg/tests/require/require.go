package require

import (
	"testing"

	"github.com/Workiz/nehora-test/pkg/tests/assert"
)

func NoError(t *testing.T, err error) {
	t.Helper()

	if !assert.NoError(t, err) {
		t.FailNow()
	}
}
