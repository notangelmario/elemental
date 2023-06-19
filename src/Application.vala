public class Elemental.App: Gtk.Application {
	public App () {
		Object (
			application_id: "eu.angelmario.elemental",
			flags: ApplicationFlags.FLAGS_NONE
		);
	}

	protected override void activate () {
		var css_provider = new Gtk.CssProvider ();
		css_provider.load_from_path ("data/style.css");

		var window = new Elemental.Window (this);

		Gtk.StyleContext.add_provider_for_display (
			Gdk.Display.get_default (), 
			css_provider, 
			Gtk.STYLE_PROVIDER_PRIORITY_USER
		);

		window.show ();
	}

	public static int main (string[] args) {
		var app = new App ();
		return app.run (args);
	}
}