unit unitHello;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfrm1 }

  Tfrm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frm1: Tfrm1;

implementation

{$R *.lfm}

{ Tfrm1 }

procedure Tfrm1.Button1Click(Sender: TObject);
begin

end;

end.

