public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.marcelkohl.elementary-gtk-vala-hello-again",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var label_hello = new Gtk.Label ("Hello world again!");
        label_hello.margin = 12;

        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add (label_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
