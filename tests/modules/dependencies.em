module Test = import("TestFramework");

module ModuleDependencyTest ! Test::TestFramework {
	export std::string Name = "ModuleDependencyTest";
	export std::string Description = "Test modules with dependencies";

	export void Run() {
		Test::assertEquals(ModuleA::MagicNumber, 10);
	};
}

module ModuleA {
	export int MagicNumber = ModuleB::MagicNumber;
}

module ModuleB {
	export int MagicNumber = ModuleC::MagicNumber;
}

module ModuleC {
	export int MagicNumber = ModuleD::MagicNumber;
}

module ModuleD {
	export int MagicNumber = 10;
}