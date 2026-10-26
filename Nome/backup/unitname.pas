unit unitName;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmName1 }

  TfrmName1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    inp1: TEdit;
    inp2: TEdit;
    lbn1: TLabel;
    lbn2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure inp1Change(Sender: TObject);
    procedure inp2Change(Sender: TObject);
  private

  public

  end;

var
  frmName1: TfrmName1;
  nome: String;
  sobrenome: String;

implementation

{$R *.lfm}

{ TfrmName1 }

procedure TfrmName1.btn1Click(Sender: TObject);
begin
 nome := inp1.Text;
 sobrenome := inp2.Text;
 ShowMessage('Seu nome completo é ' + nome + ' ' + sobrenome );
end;

procedure TfrmName1.btn2Click(Sender: TObject);
begin
 Application.Terminate;
end;


end.

