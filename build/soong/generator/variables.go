package generator

import (
	"fmt"

	"android/soong/android"
)

func blackironExpandVariables(ctx android.ModuleContext, in string) string {
	blackironVars := ctx.Config().VendorConfig("blackironVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if blackironVars.IsSet(name) {
			return blackironVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
