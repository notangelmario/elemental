public class Elemental.Window: Gtk.ApplicationWindow {
	public Gtk.Stack stack;

	public Window (Gtk.Application app) {
		var gtk_settings = Gtk.Settings.get_default ();
		var granite_settings = Granite.Settings.get_default ();

		gtk_settings.gtk_application_prefer_dark_theme = granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK;

		granite_settings.notify["prefers-color-scheme-dark"].connect (() => {
			gtk_settings.gtk_application_prefer_dark_theme = granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK;
		});

		var header = new Gtk.HeaderBar ();
		header.add_css_class (Granite.STYLE_CLASS_FLAT);

		Object (
			application: app,
			title: "Elemental",
			default_width: 600,
			default_height: 400,
			titlebar: header
		);

		this.stack = new Gtk.Stack ();
		stack.add_named (new Elemental.Intro (stack), "intro");
		stack.add_named (new Gtk.Label("Main"), "main");

		set_child (stack);
	}


}