package android

// Global config used by Black Iron soong additions
var BlackironConfig = struct {
	// List of packages that are permitted
	// for java source overlays.
	JavaSourceOverlayModuleWhitelist []string
}{
	// JavaSourceOverlayModuleWhitelist
	[]string{
		"org.blackiron.hardware",
	},
}
