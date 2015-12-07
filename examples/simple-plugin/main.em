module std = import ("std");

module Plugin {
	export !class Renderer {
		void init();

		void update();
		void draw();
	};

	export !class Retriever {
		public generic Model;

		public void init(Model model);
	};

	export !module PluginModule {
		/**
		 * Name for the module
		 */
		export std::string Name; 

		/**
		 * Version string of the plugin
		 */
		export std::string Version;

		/**
		 * Author of the plugin
		 */
		export std::string Author;

		/**
		 * Renderer class of the plugin
		 */
		export class Renderer : Renderer;

		/** 
		 * Bunch of data retriever classes
		 */
		export class[] Retrievers : Retriever;

	};

	export void registerPlugin(std::string moduleName) {
		module newPlugin : PluginModule = await import(moduleName);

		newPlugin::Renderer newRenderer = new newPlugin::Renderer();
		newRenderer.init();
		newRenderer.update();
		newRenderer.draw();

		@foreach (class retriever in newPlugin::Retrievers) {
			retriever rt = new retriever();
			rt.init();
		}
	};
}

// ---------------------------------------------------------------------------------
module Plugin = import ("Plugin");

module MyTestModule 
	: base (Plugin::PluginModule)
{
	export std::string Name = "Test Module";
	export std::string Version = "0.1 Alpha";
	export std::string Author = "Rene Eichhorn";

	export class Renderer {
		void init() {
			std::cout << "Hey I just got initialized";
		}

		void update() {
			std::cout << "Hey I need to be updated";
		}

		void draw() {
			std::cout << "Hey I need to render something";
		}
	};

	export class Retrievers['TestRetriever'] {
		void init() {
			std::cout << "TestRetriever just got initialized";
		}
	};

	export class Retrievers['TestRetriever2'] {
		void init() {
			std::cout << "TestRetriever2 just got initialized";
		}
	};
}
