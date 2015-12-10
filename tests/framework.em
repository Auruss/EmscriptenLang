module std = import("std");

module TestFramework {
	/**
	 * Describes a simple test case module
	 */
	export !module TestCase {
		export std::string Name;
		export std::string Description;

		export void Run();
	};


	export void assertTrue(bool expr) { }
	export void assertFalse(bool expr) { }
	export void assertEquals<any>(any valA, any valB) { }
	export void assertUnequal<any>(any valA, any valB) { }
}