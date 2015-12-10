module std = import("std");

module ModuleA = import("ModuleA");
module ModuleB = import("ModuleB");

void main () {
	std::cout << ModuleA::MyNumber << " " << ModuleB::MyNumber << std::endl;
}