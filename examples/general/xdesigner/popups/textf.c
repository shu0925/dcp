/*
** Generated by X-Designer
*/
/*
**LIBS: -lXm -lXt -lX11
*/

#include <stdio.h>
#include <stdlib.h>
#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include <X11/Shell.h>

#include <Xm/Xm.h>
#include <Xm/RepType.h>
#include <Xm/DialogS.h>
#include <Xm/PushB.h>
#include <Xm/RowColumn.h>
#include <Xm/TextF.h>


#include "textf_base.h"

extern void popup_handler_callback(Widget, XtPointer, XtPointer) ;


/* Global Declarations */

XtAppContext app_context = (XtAppContext) 0 ;
Display     *display     = (Display *)    0 ;

int main(int argc, char **argv)
{

	/* Enable Localisation of the Application */

	XtSetLanguageProc((XtAppContext) 0, (XtLanguageProc) 0, (XtPointer) 0) ;

	/* Initialise the X Toolkit */

	XtToolkitInitialize ();

	/* Create a Global Application Context */

	app_context = XtCreateApplicationContext ();

	/* Open the Display */

	display = XtOpenDisplay(app_context, (String) 0, argv[0], "XApplication",
	                       (XrmOptionDescRec *) 0, 0,
	                       &argc, argv);
	if (display == (Display *) 0) {
		printf("%s: can't open display, exiting...\n", argv[0]);
		exit (-1);
	}
	/* Call the Create Procedures for the Dialogs in the Application */

	create_shell ( display, argv[0], argc, argv );

	/* Display the Primary Application Shell */

	XtRealizeWidget (shell);

	/* Entering X Main Loop... */

	XtAppMainLoop (app_context);

	/* NOTREACHED */

	exit (0);
}
