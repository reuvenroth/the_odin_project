regexone.com/example/6? (Last section & no solution given)
your task	text	capture	result
skip text	W/dalvikvm( 1553): threadid=1: uncaught exception		✓
skip text	E/( 1553): FATAL EXCEPTION: main		✓
skip text	E/( 1553): java.lang.StringIndexOutOfBoundsException		✓
capture text	E/( 1553):   at widget.List.makeView(ListView.java:1727)	makeView, ListView.java, 1727	✓
capture text	E/( 1553):   at widget.List.fillDown(ListView.java:652)	fillDown, ListView.java, 652	✓
capture text	E/( 1553):   at widget.List.fillFrom(ListView.java:709)	fillFrom, ListView.java, 709	✓

/*came up with this solution alone*/
([m|f]\w+)\W([\w\.]*):(\w*)