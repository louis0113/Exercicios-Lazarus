
unit parimparUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfrm1 }

  Tfrm1 = class(TForm)
    btn1: TButton;
    inp1: TEdit;
    lbn1: TLabel;
    procedure btn1Click(Sender: TObject);
  private

  public

  end;

var
  frm1: Tfrm1;
  number: Integer;
implementation

{$R *.lfm}

{ Tfrm1 }

procedure Tfrm1.btn1Click(Sender: TObject);

begin
  if not TryStrToInt(Trim(inp1.Text), number) then
  begin
    ShowMessage('Digite um número inteiro válido');
    Exit;
  end;

  if number mod 2 = 0 then
    ShowMessage('Esse número é par')
  else
    ShowMessage('Esse número é ímpar');

end;

end.
