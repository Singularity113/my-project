unit start;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, gp_5x5, gp_7x7;

type

  { TForm3 }

  TForm3 = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Pole_7x7: TButton;
    Name_2: TEdit;
    name_1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    pole_5x5: TButton;
    procedure pole_5x5Click(Sender: TObject);
    procedure Pole_7x7Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }


procedure TForm3.pole_5x5Click(Sender: TObject);
begin
  gp_5x5.name_a := name_1.Text;
  gp_5x5.name_b := name_2.Text;
  Form2.Show;
end;

procedure TForm3.Pole_7x7Click(Sender: TObject);
begin
  gp_7x7.name_a := name_1.Text;
  gp_7x7.name_b := name_2.Text;
  Form1.Show;
end;

end.
