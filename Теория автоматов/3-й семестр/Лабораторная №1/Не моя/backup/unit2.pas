unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox10Change(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure ComboBox12Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;
//type tarr=array [1..12] of string ;

var
  Form2: TForm2;
  s:array of integer;
  col: array [1..12] of integer;
  k:integer;
  Flag,m:boolean; f:boolean;
  q,w:integer;
  r:boolean;
  arr1:array [1..12] of integer;
implementation
uses Unit1;
{$R *.lfm}

{ TForm2 }



procedure proverka;
var i,j:integer;
begin
   f:=true;
   for i:=1 to 11 do begin
    for j:=i+1 to 12 do  begin
      if col[i]=col[j] then begin
         q:=i;
         w:=j;
         f:=false;
         exit;
      end
       else
       begin
       f:=true;
       end;
    end;
   end;

end;


procedure sdvig(b,d:integer);
var i:integer;
begin
  for i:=b to d do  begin
    s[i]:=s[i+1];
     end;
    s[d]:=0;
end;


procedure TForm2.Button1Click(Sender: TObject);
var i,t:integer;
begin

   Flag:=true;// на рандом
   k:=16;
   setlength(s,k);
   s[0]:=0;
   for i:=1 to k do begin
     s[i]:=i;
    end;
   randomize;
   i:=14;
   for t:=1 to 12 do
      begin
       i:=random(i)+1;
       col[t]:=s[i];
       Sdvig(i,k);
       k:=k-1;
       setlength(s,k);
       i:=i-1;
      end;
   setlength(s,0);
   Combobox1.ItemIndex:=col[1];
   Combobox2.ItemIndex:=col[2];
   Combobox3.ItemIndex:=col[3];
   Combobox4.ItemIndex:=col[4];
   Combobox5.ItemIndex:=col[5];
   Combobox6.ItemIndex:=col[6];
   Combobox7.ItemIndex:=col[7];
   Combobox8.ItemIndex:=col[8];
   Combobox9.ItemIndex:=col[9];
   Combobox10.ItemIndex:=col[10];
   Combobox11.ItemIndex:=col[11];
   Combobox12.ItemIndex:=col[12];
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 if Flag=true then begin
   if MessageDlg('Применить','Вы действительно хотите ничего не применять?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
       begin
     flag:=false;
     Combobox1.ItemIndex:=arr1[1];
     Combobox2.ItemIndex:=arr1[2];
     Combobox3.ItemIndex:=arr1[3];
     Combobox4.ItemIndex:=arr1[4];
     Combobox5.ItemIndex:=arr1[5];
     Combobox6.ItemIndex:=arr1[6];
     Combobox7.ItemIndex:=arr1[7];
     Combobox8.ItemIndex:=arr1[8];
     Combobox9.ItemIndex:=arr1[9];
     Combobox10.ItemIndex:=arr1[10];
     Combobox11.ItemIndex:=arr1[11];
     Combobox12.ItemIndex:=arr1[12];
           Form2.Close;
       end
   else
   begin
     Button4Click(Button2);
     exit;
   end;
 end else
 Form2.Close;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  r:=true;
  if  MessageDlg('Отменить всё','Вы действительно хотите всё отменить?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      flag:=false;
     Combobox1.ItemIndex:=arr1[1];
     Combobox2.ItemIndex:=arr1[2];
     Combobox3.ItemIndex:=arr1[3];
     Combobox4.ItemIndex:=arr1[4];
     Combobox5.ItemIndex:=arr1[5];
     Combobox6.ItemIndex:=arr1[6];
     Combobox7.ItemIndex:=arr1[7];
     Combobox8.ItemIndex:=arr1[8];
     Combobox9.ItemIndex:=arr1[9];
     Combobox10.ItemIndex:=arr1[10];
     Combobox11.ItemIndex:=arr1[11];
     Combobox12.ItemIndex:=arr1[12];
    end;
end;

procedure TForm2.Button4Click(Sender: TObject);
var l:integer;
begin
  Flag:=false;
     col[1]:=Combobox1.ItemIndex;
     col[2]:=Combobox2.ItemIndex;
     col[3]:=Combobox3.ItemIndex;
     col[4]:=Combobox4.ItemIndex;
     col[5]:=Combobox5.ItemIndex;
     col[6]:=Combobox6.ItemIndex;
     col[7]:=Combobox7.ItemIndex;
     col[8]:=Combobox8.ItemIndex;
     col[9]:=Combobox9.ItemIndex;
     col[10]:=Combobox10.ItemIndex;
     col[11]:=Combobox11.ItemIndex;
     col[12]:=Combobox12.ItemIndex;
     proverka;
      if f=false then begin
       showmessage(inttostr(q)+' и '+inttostr(w)+' имеют одинаковый цвет');
       m:=false;
       exit;
      end
       else
       for l:=1 to 12 do
          begin
           Form1.choice(l,col[l]);
          end;
end;

procedure TForm2.ComboBox10Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox11Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox12Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox3Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox4Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox5Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox6Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox7Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox8Change(Sender: TObject);
begin
  Flag:=true;
end;

procedure TForm2.ComboBox9Change(Sender: TObject);
begin
  Flag:=true;
end;


procedure TForm2.FormCreate(Sender: TObject);
var p:integer;
begin
   Flag:=false;
      col[1]:=Combobox1.ItemIndex;
      col[2]:=Combobox2.ItemIndex;
      col[3]:=Combobox3.ItemIndex;
      col[4]:=Combobox4.ItemIndex;
      col[5]:=Combobox5.ItemIndex;
      col[6]:=Combobox6.ItemIndex;
      col[7]:=Combobox7.ItemIndex;
      col[8]:=Combobox8.ItemIndex;
      col[9]:=Combobox9.ItemIndex;
      col[10]:=Combobox10.ItemIndex;
      col[11]:=Combobox11.ItemIndex;
      col[12]:=Combobox12.ItemIndex;
      for p:=1 to 12 do
         begin
          Form1.choice(p,col[p]);
         end;
   end;

procedure TForm2.FormShow(Sender: TObject);
var i:byte;
begin
  arr1[1]:=Combobox1.ItemIndex;
      arr1[2]:=Combobox2.ItemIndex;
     arr1[3]:=Combobox3.ItemIndex;
     arr1[4]:=Combobox4.ItemIndex;
      arr1[5]:=Combobox5.ItemIndex;
    arr1[6]:=Combobox6.ItemIndex;
    arr1[7]:=Combobox7.ItemIndex;
     arr1[8]:=Combobox8.ItemIndex;
     arr1[9]:=Combobox9.ItemIndex;
      arr1[10]:=Combobox10.ItemIndex;
      arr1[11]:=Combobox11.ItemIndex;
      arr1[12]:=Combobox12.ItemIndex;
      for i:=1 to 12 do
         begin
          Form1.choice(i,arr1[i]);
         end;
end;


end.

