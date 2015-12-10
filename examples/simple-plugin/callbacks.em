module std = import("std");

module Test {
	export void !callbackType(int a, int b):

	export void giiveMeCallback2(callbackType callback) {
		callback(10, 10);
	}

	export void giveMeCallback(int !callback(int a, int b)) {
		callback(10, 15);
	}

	export void callMe() {
		int c = 10;
		giveMeCallback((int a, int b) [c]  => {
			std::printf("%d\n", a + b + c);
		};
	}
}