unit equacaoUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmEquacao }

  TfrmEquacao = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmEquacao: TfrmEquacao;

implementation

{$R *.lfm}

{ TfrmEquacao }


procedure TfrmEquacao.Button1Click(Sender: TObject);
var
  expression: String;
begin
        nome := Edit1.Text;
        ShowMessage('Palavra: ' + nome);
end;

end.

