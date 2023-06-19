// We are using gtk 4.0

public class Elemental.Intro: Gtk.Box {
	public Intro (Gtk.Stack stack) {
		orientation = Gtk.Orientation.VERTICAL;
		spacing = 12;
		halign = Gtk.Align.CENTER;
		valign = Gtk.Align.CENTER;

		var title = new Gtk.Label ("Welcome!");
		title.add_css_class ("intro-welcome");

		var subtitle = new Gtk.Label ("Elemental will install the packages\nto make your system awesome.");
		subtitle.set_justify (Gtk.Justification.CENTER);
		
		var button = new Gtk.Button () {
			label = "Start",
		};
		button.clicked.connect (() => {
			stack.set_visible_child_name ("main");
		});
		button.add_css_class ("suggested-action");
		
		append (title);
		append (subtitle);
		append (button);
	}
}