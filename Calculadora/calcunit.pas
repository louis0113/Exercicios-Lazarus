unit calcUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TcalcFrm }

  TcalcFrm = class(TForm)
    nbtn1: TButton;
    nbtn8: TButton;
    nbtn9: TButton;
    opbtn3: TButton;
    opbtn4: TButton;
    dobtn: TButton;
    nbtn2: TButton;
    nbtn0: TButton;
    nbtn3: TButton;
    opbtn1: TButton;
    opbtn2: TButton;
    nbtn4: TButton;
    nbtn5: TButton;
    nbtn6: TButton;
    nbtn7: TButton;
    Label1: TLabel;
    opbtn5: TButton;
    Panel1: TPanel;
    pnl1: TPanel;
    procedure nbtn0Click (Sender: TObject);
    procedure nbtn1Click (Sender: TObject);
    procedure nbtn2Click (Sender: TObject);
    procedure nbtn3Click (Sender: TObject);
    procedure nbtn4Click (Sender: TObject);
    procedure nbtn5Click (Sender: TObject);
    procedure nbtn6Click (Sender: TObject);
    procedure nbtn7Click (Sender: TObject);
    procedure nbtn8Click (Sender: TObject);
    procedure nbtn9Click (Sender: TObject);
    procedure optbtn1Click (Sender: TObject);
    procedure optbtn2Click (Sender: TObject);
    procedure optbtn3Click (Sender: TObject);
    procedure optbtn4Click (Sender: TObject);
    procedure optbtn5Click (Sender: TObject);
    procedure dobtnClick (Sender: TObject);
  private

  public

  end;

var
  calcFrm: TcalcFrm;
  visor: String = '';
  units: array of String;
  ops : array of char;
  nums: array of Integer;
  msg: String;

implementation

{$R *.lfm}

{TcalcFrm}


function changeVisor(num: TCaption) : String;
begin

    if (num = '+') or (num = '-') or (num = '*') or (num = '/') then
      msg := visor + ' ' + num + ' '
    else
      msg := visor + num;

    Result := msg;
end;

procedure TcalcFrm.nbtn0CLick (Sender : TObject);
begin
     visor := changeVisor(nbtn0.Caption);
     Label1.Caption := visor;

end;

procedure TcalcFrm.nbtn1Click(Sender: TObject);
begin
     visor := changeVisor(nbtn1.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn2Click(Sender: TObject);
begin
    visor := changeVisor(nbtn2.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn3Click(Sender: TObject);
begin
    visor := changeVisor(nbtn3.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn4Click(Sender: TObject);
begin
   visor := changeVisor(nbtn4.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn5Click(Sender: TObject);
begin
     visor := changeVisor(nbtn5.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn6Click(Sender: TObject);
begin
     visor := changeVisor(nbtn6.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn7Click(Sender: TObject);
begin
    visor := changeVisor(nbtn7.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn8Click(Sender: TObject);
begin
    visor := changeVisor(nbtn8.Caption);
    Label1.Caption := visor;
end;

procedure TcalcFrm.nbtn9Click(Sender: TObject);
begin
     visor := changeVisor(nbtn9.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.optbtn1Click(Sender: TObject);
begin
     visor := changeVisor(opbtn1.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.optbtn2Click(Sender: TObject);
begin
     visor := changeVisor(opbtn2.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.optbtn3Click(Sender: TObject);
begin
     visor := changeVisor(opbtn3.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.optbtn4Click(Sender: TObject);
begin
     visor := changeVisor(opbtn4.Caption);
     Label1.Caption := visor;
end;

procedure TcalcFrm.optbtn5Click(Sender: TObject);
begin
     visor := '';
     Label1.Caption := visor;
end;

procedure TcalcFrm.dobtnClick(Sender: TObject);
begin

     units := visor.Split(' ');
     if (visor = '') then
     begin
       ShowMessage('Digite algum valor válido');
       Exit;
     end;

     ShowMessage('O primeiro número é ' + units[0] + sLineBreak + 'O segundo número é ' + units[2]);
end;
end.

