/*
** Generated by X-Designer
*/


Widget errorshell = (Widget) NULL;
Widget errorform = (Widget) NULL;
Widget errortext = (Widget) NULL;
Widget errorbutton = (Widget) NULL;



void create_errorshell (parent)
Widget parent;
{
	Widget children[3];      /* Children to manage */
	Arg al[64];                    /* Arg List */
	register int ac = 0;           /* Arg Count */
	XtPointer tmp_value;             /* ditto */
	Pixel fg, bg;                    /* colour values for pixmaps */ 
	XmString xmstrings[16];    /* temporary storage for XmStrings */
	Widget messageBox1 = (Widget)NULL;
	Widget label1 = (Widget)NULL;
	Widget scrolledText1 = (Widget)NULL;
	Widget scrollbar1 = (Widget)NULL;
	Widget scrollbar2 = (Widget)NULL;

	XtSetArg(al[ac], XmNallowShellResize, TRUE); ac++;
	XtSetArg(al[ac], XmNtitle, "errors"); ac++;
	errorshell = XmCreateDialogShell ( parent, (char *) "errorshell", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNautoUnmanage, FALSE); ac++;
	XtSetArg(al[ac], XmNdialogType, XmDIALOG_TEMPLATE); ac++;
	messageBox1 = XmCreateMessageBox ( errorshell, (char *) "messageBox1", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNwidth, 243); ac++;
	XtSetArg(al[ac], XmNheight, 127); ac++;
	XtSetArg(al[ac], XmNautoUnmanage, TRUE); ac++;
	errorform = XmCreateForm ( messageBox1, (char *) "errorform", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNlabelType, XmPIXMAP); ac++;
	label1 = XmCreateLabel ( errorform, (char *) "label1", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNforeground, &fg ); ac++;
	XtSetArg(al[ac], XmNbackground, &bg ); ac++;
	XtGetValues(label1, al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNlabelPixmap, XmGetPixmap ( XtScreen ( label1 ), "/usr/xd/release/demos/greptool/xm_error.bm", fg, bg )); ac++;
	XtSetValues ( label1, al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNcolumns, 27); ac++;
	XtSetArg(al[ac], XmNeditable, FALSE); ac++;
	XtSetArg(al[ac], XmNresizeHeight, TRUE); ac++;
	XtSetArg(al[ac], XmNresizeWidth, TRUE); ac++;
	XtSetArg(al[ac], XmNeditMode, XmMULTI_LINE_EDIT); ac++;
	XtSetArg(al[ac], XmNrows, 6); ac++;
	errortext = XmCreateScrolledText ( errorform, (char *) "errortext", al, ac );
	ac = 0;
	scrolledText1 = XtParent ( errortext );

	XtSetArg(al[ac], XmNhorizontalScrollBar, &scrollbar1); ac++;
	XtSetArg(al[ac], XmNverticalScrollBar, &scrollbar2); ac++;
	XtGetValues(scrolledText1, al, ac );
	ac = 0;
	xmstrings[0] = XmStringGenerate ( "OK", XmFONTLIST_DEFAULT_TAG, XmCHARSET_TEXT, NULL );
	XtSetArg(al[ac], XmNlabelString, xmstrings[0]); ac++;
	errorbutton = XmCreatePushButton ( messageBox1, (char *) "errorbutton", al, ac );
	ac = 0;
	XmStringFree ( xmstrings [ 0 ] );
	XtSetArg(al[ac], XmNdefaultButton, errorbutton); ac++;
	XtSetValues ( messageBox1, al, ac );
	ac = 0;


	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNtopOffset, 5); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftOffset, 5); ac++;
	XtSetValues ( label1,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNtopOffset, 5); ac++;
	XtSetArg(al[ac], XmNbottomAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNbottomOffset, 5); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNleftOffset, 5); ac++;
	XtSetArg(al[ac], XmNleftWidget, label1); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNrightOffset, 5); ac++;
	XtSetValues ( scrolledText1,al, ac );
	ac = 0;
	if (errortext != (Widget) 0) { XtManageChild(errortext); }
	if ((children[ac] = label1) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if ((children[ac] = errorform) != (Widget) 0) { ac++; }
	if ((children[ac] = errorbutton) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
}

