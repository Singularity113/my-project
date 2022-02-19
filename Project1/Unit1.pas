Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure Form1_Load(sender: Object; e: EventArgs);
    begin
     
    end;
    procedure button26_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    button1: Button;
    button2: Button;
    button3: Button;
    button4: Button;
    button5: Button;
    button6: Button;
    button7: Button;
    button8: Button;
    button9: Button;
    button10: Button;
    button11: Button;
    button12: Button;
    button13: Button;
    button14: Button;
    button15: Button;
    button16: Button;
    button17: Button;
    button18: Button;
    button20: Button;
    button19: Button;
    button21: Button;
    button22: Button;
    button23: Button;
    button24: Button;
    button25: Button;
    button26: Button;
    button27: Button;
    button28: Button;
    button29: Button;
    textBox1: TextBox;
    label2: &Label;
    label1: &Label;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

  implementation

procedure Form1.button26_Click(sender: Object; e: EventArgs);
  var k1:integer;
  begin
    if textbox1.Text='' then label2.Text:='Вы не ввели номер поля'
    else
      begin
    k1:=strtoint(textbox1.Text);
    label2.Text:='';
     case k1 of
       1:button1.Text:=button(sender).text;
       2:button2.Text:=button(sender).text;
       3:button3.Text:=button(sender).text;
       4:button4.Text:=button(sender).text;
       5:button5.Text:=button(sender).text;
     end;
    textbox1.Text:='';
    end;
  end;
end.
