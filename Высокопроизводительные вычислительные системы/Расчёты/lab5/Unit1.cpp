//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <Math.h>
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
double MAX(double x, double y)
    { if (x>y) return x; else return y;}
//---------------------------------------------------------------------------

void __fastcall TForm1::BitBtn1Click(TObject *Sender)
{
double tc, ti, r, f, tscal, tstart;
int n, L;
double R, P, Rscal, d, E;
tc = StrToFloat(this->Edit2->Text)*0.000000001;
ti = StrToFloat(this->Edit3->Text)*0.000000001;
n  = StrToInt(this->Edit1->Text);
L  = StrToInt(this->Edit5->Text);
tscal = StrToFloat(this->Edit4->Text)*0.000000001;
R = 1/tc;
this->Edit7->Text = FloatToStr(R);
this->Edit13->Text = FloatToStr(R);
P = L/(tc*(L+n-1)+ti);
this->Edit9->Text = FloatToStrF(P,ffFixed,10,0);
Rscal  = 1/tscal;
this->Edit14->Text = FloatToStrF(Rscal,ffFixed,10,0);
r = R/Rscal;
this->Edit15->Text = FloatToStrF(r,ffFixed,10,4);
f = StrToFloat(this->Edit12->Text);
d = f*r+(1-f);
this->Edit11->Text = FloatToStrF(d,ffFixed,10,4);
tstart = ti+n*tc;
this->Edit18->Text = FloatToStr(tstart*1000000000);
E=L*tscal/(tstart+(L-1)*tc);
this->Edit17->Text = FloatToStrF(E,ffFixed,10,6);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::BitBtn2Click(TObject *Sender)
{
double tc, ti_1, ti_2, ti_3, r, f, tscal_1, tscal_2, tscal_3, tstart_1, tstart_2, tstart_3;
int n, L_1, L_2, L_3;
double R, P, Rscal, d, E, E_1, E_2, E_3, P1, P2, P3;
tc = StrToFloat(this->Edit32->Text)*0.000000001;
ti_1 = StrToFloat(this->Edit33->Text)*0.000000001;
ti_2 = StrToFloat(this->Edit37->Text)*0.000000001;
ti_3 = StrToFloat(this->Edit38->Text)*0.000000001;
n  = StrToInt(this->Edit31->Text);
L_1  = StrToInt(this->Edit35->Text);
L_2  = StrToInt(this->Edit36->Text);
L_3  = StrToInt(this->Edit6->Text);
tscal_1 = StrToFloat(this->Edit34->Text)*0.000000001;
tscal_2 = StrToFloat(this->Edit47->Text)*0.000000001;
tscal_3 = StrToFloat(this->Edit48->Text)*0.000000001;
R = 1/tc;
this->Edit19->Text = FloatToStr(R);
this->Edit25->Text = FloatToStr(R);
P1 = L_1/(tc*(L_1+n-1)+ti_1);
P2 = L_2/(tc*(L_2+n-1)+ti_2);
P3 = L_3/(tc*(L_3+n-1)+ti_3);
if (P3 == 0)
    {
    P  = (P1+P2+P3)/2;
    }
else P  = (P1+P2+P3)/3;
this->Edit39->Text = FloatToStrF(P1,ffFixed,10,0);
this->Edit21->Text = FloatToStrF(P2,ffFixed,10,0);
this->Edit40->Text = FloatToStrF(P3,ffFixed,10,0);
this->Edit41->Text = FloatToStrF(P,ffFixed,10,0);
Rscal  = 1/tscal_1;
this->Edit26->Text = FloatToStrF(Rscal,ffFixed,10,0);
r = R/Rscal;
this->Edit27->Text = FloatToStrF(r,ffFixed,10,4);
f = StrToFloat(this->Edit12->Text);
d = f*r+(1-f);
this->Edit23->Text = FloatToStrF(d,ffFixed,10,4);
tstart_1 = ti_1+n*tc;
tstart_2 = ti_2+n*tc;
tstart_3 = ti_3+n*tc;

this->Edit30->Text = FloatToStr(tstart_1*1000000000);
this->Edit29->Text = FloatToStr(tstart_2*1000000000);
this->Edit42->Text = FloatToStr(tstart_3*1000000000);

E_1=L_1*tscal_1/(tstart_1+(L_1-1)*tc);
E_2=L_2*tscal_2/(tstart_2+(L_2-1)*tc);
E_3=L_3*tscal_3/(tstart_3+(L_3-1)*tc);
if (E_3 == 0)
    {
    E = (E_1+E_2+E_3)/2;
    }
else E = (E_1+E_2+E_3)/3;
this->Edit44->Text = FloatToStrF(E_1,ffFixed,10,10);
this->Edit43->Text = FloatToStrF(E_2,ffFixed,10,10);
this->Edit45->Text = FloatToStrF(E_3,ffFixed,10,10);
this->Edit46->Text = FloatToStrF(E,ffFixed,10,6);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::BitBtn3Click(TObject *Sender)
{
double tc, ti, r, f, tscal, tstart;
int n, L;
double R, P, Rscal, d, E, Tvec, Tscal;
tc = StrToFloat(this->Edit50->Text)*0.000000001;
ti = StrToFloat(this->Edit51->Text)*0.000000001;
n  = StrToInt(this->Edit49->Text);
L  = StrToInt(this->Edit53->Text);
tscal = StrToFloat(this->Edit52->Text)*0.000000001;
R = 1/tc;
this->Edit59->Text = FloatToStr(R);
this->Edit64->Text = FloatToStr(R);
P = L/(tc*(L+n-1)+ti);
this->Edit72->Text = FloatToStrF(P,ffFixed,10,0);
Rscal  = 1/tscal;
this->Edit65->Text = FloatToStrF(Rscal,ffFixed,10,10);
r = R/Rscal;
this->Edit66->Text = FloatToStrF(r,ffFixed,10,10);
f = StrToFloat(this->Edit63->Text);
d = f*r+(1-f);
this->Edit62->Text = FloatToStrF(d,ffFixed,10,10);
Tvec = (tc*(L+n-1)+ti)+(n*tc);
this->Edit54->Text = FloatToStrF(Tvec,ffFixed,10,10);
Tscal = tscal*L+tscal;
this->Edit55->Text = FloatToStrF(Tscal,ffFixed,10,10);
this->Edit57->Text = FloatToStrF(Tscal,ffFixed,10,10);
this->Edit56->Text = FloatToStrF(tc*(L+n-1)+ti,ffFixed,10,10);
double tvcom, tscom, t;
tvcom = tc*(L+n-1)+ti;
tscom = tscal;
t = MAX(tvcom,tscom);
this->Edit58->Text = FloatToStrF(t,ffFixed,10,10);
}
//---------------------------------------------------------------------------
