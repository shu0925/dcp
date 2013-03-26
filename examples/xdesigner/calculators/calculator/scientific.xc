/*
** Generated by X-Designer
*/
/*
**LIBS: -lXm -lXt -lX11
*/

#include <X11/Xatom.h>
#include <X11/Intrinsic.h>
#include <X11/Shell.h>

#include <Xm/Xm.h>
#include <Xm/DialogS.h>
#include <Xm/Form.h>
#include <Xm/PushB.h>
#include <Xm/RowColumn.h>
#include <Xm/Text.h>
#include <Xm/ToggleB.h>
#include <Xm/CascadeBG.h>
#include <Xm/LabelG.h>


extern void digit_callback() ;
extern void decimal_point() ;
extern void Equals() ;
extern void Add() ;
extern void Subtract() ;
extern void Multiply() ;
extern void Divide() ;
extern void Sin() ;
extern void Cos() ;
extern void Tan() ;
extern void Log10() ;
extern void Ln() ;
extern void MemRecall() ;
extern void Sqrt() ;
extern void RaisePower() ;
extern void Exp() ;
extern void Reciprocal() ;
extern void Factorial() ;
extern void MemAdd() ;
extern void And() ;
extern void Or() ;
extern void Xor() ;
extern void LeftShift() ;
extern void RightShift() ;
extern void MemSubtract() ;
extern void ClearAll() ;
extern void ClearEntry() ;
extern void ChangeSign() ;
extern void OpenParenthesis() ;
extern void CloseParenthesis() ;
extern void inverse_callback() ;
extern void Degrees() ;
extern void Radians() ;
extern void Gradient() ;
Widget calc_shell = (Widget) NULL;
Widget calc_form = (Widget) NULL;
Widget digits_rc = (Widget) NULL;
Widget digit7 = (Widget) NULL;
Widget digit4 = (Widget) NULL;
Widget digit1 = (Widget) NULL;
Widget dec_point = (Widget) NULL;
Widget digit8 = (Widget) NULL;
Widget digit5 = (Widget) NULL;
Widget digit2 = (Widget) NULL;
Widget digit0 = (Widget) NULL;
Widget digit9 = (Widget) NULL;
Widget digit6 = (Widget) NULL;
Widget digit3 = (Widget) NULL;
Widget eq_b = (Widget) NULL;
Widget add_b = (Widget) NULL;
Widget sub_b = (Widget) NULL;
Widget mul_b = (Widget) NULL;
Widget div_b = (Widget) NULL;
Widget calc_display = (Widget) NULL;
Widget unary_rc = (Widget) NULL;
Widget sin_b = (Widget) NULL;
Widget cos_b = (Widget) NULL;
Widget tan_b = (Widget) NULL;
Widget log_b = (Widget) NULL;
Widget ln_b = (Widget) NULL;
Widget m_b = (Widget) NULL;
Widget sqr_b = (Widget) NULL;
Widget pow_b = (Widget) NULL;
Widget exp_b = (Widget) NULL;
Widget rec_b = (Widget) NULL;
Widget fact_b = (Widget) NULL;
Widget mplus_b = (Widget) NULL;
Widget and_b = (Widget) NULL;
Widget or_b = (Widget) NULL;
Widget xor_b = (Widget) NULL;
Widget lsh_b = (Widget) NULL;
Widget rsh_b = (Widget) NULL;
Widget mminus_b = (Widget) NULL;
Widget ac_b = (Widget) NULL;
Widget ce_b = (Widget) NULL;
Widget sgn_b = (Widget) NULL;
Widget bra_b = (Widget) NULL;
Widget ket_b = (Widget) NULL;
Widget inv_b = (Widget) NULL;
Widget drg_cb = (Widget) NULL;
Widget deg_b = (Widget) NULL;
Widget rad_b = (Widget) NULL;
Widget gra_b = (Widget) NULL;



void create_calc_shell (display, app_name, app_argc, app_argv)
Display *display;
char *app_name;
int app_argc;
char **app_argv;
{
	Widget children[24];      /* Children to manage */
	Arg al[64];                    /* Arg List */
	register int ac = 0;           /* Arg Count */
	XrmValue from_value, to_value; /* For resource conversion */
	XtPointer tmp_value;             /* ditto */
	Widget optionMenu1 = (Widget)NULL;
	Widget label1 = (Widget)NULL;
	Widget menu1 = (Widget)NULL;

	XtSetArg(al[ac], XmNallowShellResize, TRUE); ac++;
	XtSetArg(al[ac], XmNargc, app_argc); ac++;
	XtSetArg(al[ac], XmNargv, app_argv); ac++;
	calc_shell = XtAppCreateShell(app_name, (char *) "MCalc", sessionShellWidgetClass, display, al, ac);

	ac = 0;
	XtSetArg(al[ac], XmNnavigationType, XmEXCLUSIVE_TAB_GROUP); ac++;
	XtSetArg(al[ac], XmNautoUnmanage, FALSE); ac++;
	XtSetArg(al[ac], XmNhorizontalSpacing, 5); ac++;
	XtSetArg(al[ac], XmNverticalSpacing, 5); ac++;
	calc_form = XmCreateForm ( calc_shell, (char *) "calc_form", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNnumColumns, 4); ac++;
	XtSetArg(al[ac], XmNpacking, XmPACK_COLUMN); ac++;
	XtSetArg(al[ac], XmNentryAlignment, XmALIGNMENT_CENTER); ac++;
	digits_rc = XmCreateRowColumn ( calc_form, (char *) "digits_rc", al, ac );
	ac = 0;
	digit7 = XmCreatePushButton ( digits_rc, (char *) "digit7", al, ac );
	digit4 = XmCreatePushButton ( digits_rc, (char *) "digit4", al, ac );
	digit1 = XmCreatePushButton ( digits_rc, (char *) "digit1", al, ac );
	dec_point = XmCreatePushButton ( digits_rc, (char *) "dec_point", al, ac );
	digit8 = XmCreatePushButton ( digits_rc, (char *) "digit8", al, ac );
	digit5 = XmCreatePushButton ( digits_rc, (char *) "digit5", al, ac );
	digit2 = XmCreatePushButton ( digits_rc, (char *) "digit2", al, ac );
	digit0 = XmCreatePushButton ( digits_rc, (char *) "digit0", al, ac );
	digit9 = XmCreatePushButton ( digits_rc, (char *) "digit9", al, ac );
	digit6 = XmCreatePushButton ( digits_rc, (char *) "digit6", al, ac );
	digit3 = XmCreatePushButton ( digits_rc, (char *) "digit3", al, ac );
	eq_b = XmCreatePushButton ( digits_rc, (char *) "eq_b", al, ac );
	add_b = XmCreatePushButton ( digits_rc, (char *) "add_b", al, ac );
	sub_b = XmCreatePushButton ( digits_rc, (char *) "sub_b", al, ac );
	mul_b = XmCreatePushButton ( digits_rc, (char *) "mul_b", al, ac );
	div_b = XmCreatePushButton ( digits_rc, (char *) "div_b", al, ac );
	XtSetArg(al[ac], XmNmaxLength, 20); ac++;
	XtSetArg(al[ac], XmNcolumns, 20); ac++;
	XtSetArg(al[ac], XmNeditable, FALSE); ac++;
	XtSetArg(al[ac], XmNcursorPositionVisible, FALSE); ac++;
	calc_display = XmCreateText ( calc_form, (char *) "calc_display", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNnumColumns, 4); ac++;
	XtSetArg(al[ac], XmNorientation, XmHORIZONTAL); ac++;
	XtSetArg(al[ac], XmNpacking, XmPACK_COLUMN); ac++;
	XtSetArg(al[ac], XmNentryAlignment, XmALIGNMENT_CENTER); ac++;
	XtSetArg(al[ac], XmNadjustLast, FALSE); ac++;
	unary_rc = XmCreateRowColumn ( calc_form, (char *) "unary_rc", al, ac );
	ac = 0;
	sin_b = XmCreatePushButton ( unary_rc, (char *) "sin_b", al, ac );
	cos_b = XmCreatePushButton ( unary_rc, (char *) "cos_b", al, ac );
	tan_b = XmCreatePushButton ( unary_rc, (char *) "tan_b", al, ac );
	log_b = XmCreatePushButton ( unary_rc, (char *) "log_b", al, ac );
	ln_b = XmCreatePushButton ( unary_rc, (char *) "ln_b", al, ac );
	m_b = XmCreatePushButton ( unary_rc, (char *) "m_b", al, ac );
	sqr_b = XmCreatePushButton ( unary_rc, (char *) "sqr_b", al, ac );
	pow_b = XmCreatePushButton ( unary_rc, (char *) "pow_b", al, ac );
	exp_b = XmCreatePushButton ( unary_rc, (char *) "exp_b", al, ac );
	rec_b = XmCreatePushButton ( unary_rc, (char *) "rec_b", al, ac );
	fact_b = XmCreatePushButton ( unary_rc, (char *) "fact_b", al, ac );
	mplus_b = XmCreatePushButton ( unary_rc, (char *) "mplus_b", al, ac );
	and_b = XmCreatePushButton ( unary_rc, (char *) "and_b", al, ac );
	or_b = XmCreatePushButton ( unary_rc, (char *) "or_b", al, ac );
	xor_b = XmCreatePushButton ( unary_rc, (char *) "xor_b", al, ac );
	lsh_b = XmCreatePushButton ( unary_rc, (char *) "lsh_b", al, ac );
	rsh_b = XmCreatePushButton ( unary_rc, (char *) "rsh_b", al, ac );
	mminus_b = XmCreatePushButton ( unary_rc, (char *) "mminus_b", al, ac );
	if (DefaultDepthOfScreen(DefaultScreenOfDisplay(display)) != 1) {
		from_value.addr = "white" ;
		from_value.size = strlen( from_value.addr ) + 1;
		to_value.addr = NULL;
		XtConvertAndStore (unary_rc, XmRString, &from_value, XmRPixel, &to_value);
		if ( to_value.addr ) {
			XtSetArg(al[ac], XmNforeground, (*((Pixel*) to_value.addr))); ac++;
		}
	}
	if (DefaultDepthOfScreen(DefaultScreenOfDisplay(display)) != 1) {
		from_value.addr = "orange" ;
		from_value.size = strlen( from_value.addr ) + 1;
		to_value.addr = NULL;
		XtConvertAndStore (unary_rc, XmRString, &from_value, XmRPixel, &to_value);
		if ( to_value.addr ) {
			XtSetArg(al[ac], XmNbackground, (*((Pixel*) to_value.addr))); ac++;
		}
	}
	ac_b = XmCreatePushButton ( unary_rc, (char *) "ac_b", al, ac );
	ac = 0;
	ce_b = XmCreatePushButton ( unary_rc, (char *) "ce_b", al, ac );
	sgn_b = XmCreatePushButton ( unary_rc, (char *) "sgn_b", al, ac );
	bra_b = XmCreatePushButton ( unary_rc, (char *) "bra_b", al, ac );
	ket_b = XmCreatePushButton ( unary_rc, (char *) "ket_b", al, ac );
	XtSetArg(al[ac], XmNshadowThickness, 2); ac++;
	XtSetArg(al[ac], XmNmarginLeft, 0); ac++;
	XtSetArg(al[ac], XmNindicatorOn, XmINDICATOR_NONE); ac++;
	inv_b = XmCreateToggleButton ( unary_rc, (char *) "inv_b", al, ac );
	ac = 0;
	XtSetArg(al[ac], XmNmarginWidth, 0); ac++;
	XtSetArg(al[ac], XmNmarginHeight, 0); ac++;
	optionMenu1 = XmCreateOptionMenu ( calc_form, (char *) "optionMenu1", al, ac );
	ac = 0;
	label1 = XmOptionLabelGadget ( optionMenu1 );
	drg_cb = XmOptionButtonGadget ( optionMenu1 );
	XtSetArg(al[ac], XmNmarginWidth, 0); ac++;
	XtSetArg(al[ac], XmNmarginHeight, 0); ac++;
	XtSetValues ( label1, al, ac );
	ac = 0;
	menu1 = XmCreatePulldownMenu ( optionMenu1, (char *) "menu1", al, ac );
	deg_b = XmCreatePushButton ( menu1, (char *) "deg_b", al, ac );
	rad_b = XmCreatePushButton ( menu1, (char *) "rad_b", al, ac );
	gra_b = XmCreatePushButton ( menu1, (char *) "gra_b", al, ac );


	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 5); ac++;
	XtSetArg(al[ac], XmNtopWidget, optionMenu1); ac++;
	XtSetArg(al[ac], XmNbottomAttachment, XmATTACH_NONE); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftOffset, 1); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_NONE); ac++;
	XtSetValues ( digits_rc,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( calc_display,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 5); ac++;
	XtSetArg(al[ac], XmNtopWidget, optionMenu1); ac++;
	XtSetArg(al[ac], XmNbottomAttachment, XmATTACH_FORM); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNleftOffset, 15); ac++;
	XtSetArg(al[ac], XmNleftWidget, digits_rc); ac++;
	XtSetArg(al[ac], XmNrightAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( unary_rc,al, ac );
	ac = 0;

	XtSetArg(al[ac], XmNtopAttachment, XmATTACH_WIDGET); ac++;
	XtSetArg(al[ac], XmNtopOffset, 5); ac++;
	XtSetArg(al[ac], XmNtopWidget, calc_display); ac++;
	XtSetArg(al[ac], XmNleftAttachment, XmATTACH_FORM); ac++;
	XtSetValues ( optionMenu1,al, ac );
	ac = 0;
	if (digit7)
		XtAddCallback( digit7, XmNactivateCallback, digit_callback, (char *)7 );
	if (digit4)
		XtAddCallback( digit4, XmNactivateCallback, digit_callback, (char *)4 );
	if (digit1)
		XtAddCallback( digit1, XmNactivateCallback, digit_callback, (char *)1 );
	if (dec_point)
		XtAddCallback( dec_point, XmNactivateCallback, decimal_point, (XtPointer) 0 );
	if (digit8)
		XtAddCallback( digit8, XmNactivateCallback, digit_callback, (char *)8 );
	if (digit5)
		XtAddCallback( digit5, XmNactivateCallback, digit_callback, (char *)5 );
	if (digit2)
		XtAddCallback( digit2, XmNactivateCallback, digit_callback, (char *)2 );
	if (digit0)
		XtAddCallback( digit0, XmNactivateCallback, digit_callback, (char *)0 );
	if (digit9)
		XtAddCallback( digit9, XmNactivateCallback, digit_callback, (char *)9 );
	if (digit6)
		XtAddCallback( digit6, XmNactivateCallback, digit_callback, (char*)6 );
	if (digit3)
		XtAddCallback( digit3, XmNactivateCallback, digit_callback, (char *)3 );
	if (eq_b)
		XtAddCallback( eq_b, XmNactivateCallback, Equals, (XtPointer) 0 );
	if (add_b)
		XtAddCallback( add_b, XmNactivateCallback, Add, (XtPointer) 0 );
	if (sub_b)
		XtAddCallback( sub_b, XmNactivateCallback, Subtract, (XtPointer) 0 );
	if (mul_b)
		XtAddCallback( mul_b, XmNactivateCallback, Multiply, (XtPointer) 0 );
	if (div_b)
		XtAddCallback( div_b, XmNactivateCallback, Divide, (XtPointer) 0 );
	if ((children[ac] = digit7) != (Widget) 0) { ac++; }
	if ((children[ac] = digit4) != (Widget) 0) { ac++; }
	if ((children[ac] = digit1) != (Widget) 0) { ac++; }
	if ((children[ac] = dec_point) != (Widget) 0) { ac++; }
	if ((children[ac] = digit8) != (Widget) 0) { ac++; }
	if ((children[ac] = digit5) != (Widget) 0) { ac++; }
	if ((children[ac] = digit2) != (Widget) 0) { ac++; }
	if ((children[ac] = digit0) != (Widget) 0) { ac++; }
	if ((children[ac] = digit9) != (Widget) 0) { ac++; }
	if ((children[ac] = digit6) != (Widget) 0) { ac++; }
	if ((children[ac] = digit3) != (Widget) 0) { ac++; }
	if ((children[ac] = eq_b) != (Widget) 0) { ac++; }
	if ((children[ac] = add_b) != (Widget) 0) { ac++; }
	if ((children[ac] = sub_b) != (Widget) 0) { ac++; }
	if ((children[ac] = mul_b) != (Widget) 0) { ac++; }
	if ((children[ac] = div_b) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if (sin_b)
		XtAddCallback( sin_b, XmNactivateCallback, Sin, (XtPointer) 0 );
	if (cos_b)
		XtAddCallback( cos_b, XmNactivateCallback, Cos, (XtPointer) 0 );
	if (tan_b)
		XtAddCallback( tan_b, XmNactivateCallback, Tan, (XtPointer) 0 );
	if (log_b)
		XtAddCallback( log_b, XmNactivateCallback, Log10, (XtPointer) 0 );
	if (ln_b)
		XtAddCallback( ln_b, XmNactivateCallback, Ln, (XtPointer) 0 );
	if (m_b)
		XtAddCallback( m_b, XmNactivateCallback, MemRecall, (XtPointer) 0 );
	if (sqr_b)
		XtAddCallback( sqr_b, XmNactivateCallback, Sqrt, (XtPointer) 0 );
	if (pow_b)
		XtAddCallback( pow_b, XmNactivateCallback, RaisePower, (XtPointer) 0 );
	if (exp_b)
		XtAddCallback( exp_b, XmNactivateCallback, Exp, (XtPointer) 0 );
	if (rec_b)
		XtAddCallback( rec_b, XmNactivateCallback, Reciprocal, (XtPointer) 0 );
	if (fact_b)
		XtAddCallback( fact_b, XmNactivateCallback, Factorial, (XtPointer) 0 );
	if (mplus_b)
		XtAddCallback( mplus_b, XmNactivateCallback, MemAdd, (XtPointer) 0 );
	if (and_b)
		XtAddCallback( and_b, XmNactivateCallback, And, (XtPointer) 0 );
	if (or_b)
		XtAddCallback( or_b, XmNactivateCallback, Or, (XtPointer) 0 );
	if (xor_b)
		XtAddCallback( xor_b, XmNactivateCallback, Xor, (XtPointer) 0 );
	if (lsh_b)
		XtAddCallback( lsh_b, XmNactivateCallback, LeftShift, (XtPointer) 0 );
	if (rsh_b)
		XtAddCallback( rsh_b, XmNactivateCallback, RightShift, (XtPointer) 0 );
	if (mminus_b)
		XtAddCallback( mminus_b, XmNactivateCallback, MemSubtract, (XtPointer) 0 );
	if (ac_b)
		XtAddCallback( ac_b, XmNactivateCallback, ClearAll, (XtPointer) 0 );
	if (ce_b)
		XtAddCallback( ce_b, XmNactivateCallback, ClearEntry, (XtPointer) 0 );
	if (sgn_b)
		XtAddCallback( sgn_b, XmNactivateCallback, ChangeSign, (XtPointer) 0 );
	if (bra_b)
		XtAddCallback( bra_b, XmNactivateCallback, OpenParenthesis, (XtPointer) 0 );
	if (ket_b)
		XtAddCallback( ket_b, XmNactivateCallback, CloseParenthesis, (XtPointer) 0 );
	if (inv_b)
		XtAddCallback( inv_b, XmNvalueChangedCallback, inverse_callback, (XtPointer) 0 );
	if ((children[ac] = sin_b) != (Widget) 0) { ac++; }
	if ((children[ac] = cos_b) != (Widget) 0) { ac++; }
	if ((children[ac] = tan_b) != (Widget) 0) { ac++; }
	if ((children[ac] = log_b) != (Widget) 0) { ac++; }
	if ((children[ac] = ln_b) != (Widget) 0) { ac++; }
	if ((children[ac] = m_b) != (Widget) 0) { ac++; }
	if ((children[ac] = sqr_b) != (Widget) 0) { ac++; }
	if ((children[ac] = pow_b) != (Widget) 0) { ac++; }
	if ((children[ac] = exp_b) != (Widget) 0) { ac++; }
	if ((children[ac] = rec_b) != (Widget) 0) { ac++; }
	if ((children[ac] = fact_b) != (Widget) 0) { ac++; }
	if ((children[ac] = mplus_b) != (Widget) 0) { ac++; }
	if ((children[ac] = and_b) != (Widget) 0) { ac++; }
	if ((children[ac] = or_b) != (Widget) 0) { ac++; }
	if ((children[ac] = xor_b) != (Widget) 0) { ac++; }
	if ((children[ac] = lsh_b) != (Widget) 0) { ac++; }
	if ((children[ac] = rsh_b) != (Widget) 0) { ac++; }
	if ((children[ac] = mminus_b) != (Widget) 0) { ac++; }
	if ((children[ac] = ac_b) != (Widget) 0) { ac++; }
	if ((children[ac] = ce_b) != (Widget) 0) { ac++; }
	if ((children[ac] = sgn_b) != (Widget) 0) { ac++; }
	if ((children[ac] = bra_b) != (Widget) 0) { ac++; }
	if ((children[ac] = ket_b) != (Widget) 0) { ac++; }
	if ((children[ac] = inv_b) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if (deg_b)
		XtAddCallback( deg_b, XmNactivateCallback, Degrees, (XtPointer) 0 );
	if (rad_b)
		XtAddCallback( rad_b, XmNactivateCallback, Radians, (XtPointer) 0 );
	if (gra_b)
		XtAddCallback( gra_b, XmNactivateCallback, Gradient, (XtPointer) 0 );
	if ((children[ac] = deg_b) != (Widget) 0) { ac++; }
	if ((children[ac] = rad_b) != (Widget) 0) { ac++; }
	if ((children[ac] = gra_b) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	XtSetArg(al[ac], XmNsubMenuId, menu1); ac++;
	XtSetValues(drg_cb, al, ac );
	ac = 0;
	if ((children[ac] = digits_rc) != (Widget) 0) { ac++; }
	if ((children[ac] = calc_display) != (Widget) 0) { ac++; }
	if ((children[ac] = unary_rc) != (Widget) 0) { ac++; }
	if ((children[ac] = optionMenu1) != (Widget) 0) { ac++; }
	if (ac > 0) { XtManageChildren(children, ac); }
	ac = 0;
	if (calc_form != (Widget) 0) { XtManageChild ( calc_form); }
}
