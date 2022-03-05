Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure Form1_Load(sender: Object; e: EventArgs);
    begin
     
    end;
    procedure button26_Click(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button59_Click(sender: Object; e: EventArgs);
    procedure button60_Click(sender: Object; e: EventArgs);
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
    textBox2: TextBox;
    button30: Button;
    button31: Button;
    button32: Button;
    button33: Button;
    button34: Button;
    button35: Button;
    button36: Button;
    button37: Button;
    button38: Button;
    button39: Button;
    button40: Button;
    button41: Button;
    button42: Button;
    button43: Button;
    button44: Button;
    button45: Button;
    button46: Button;
    button47: Button;
    button48: Button;
    button49: Button;
    button50: Button;
    button51: Button;
    button52: Button;
    button53: Button;
    button54: Button;
    button55: Button;
    button56: Button;
    button57: Button;
    button58: Button;
    richTextBox1: RichTextBox;
    button59: Button;
    label3: &Label;
    textBox3: TextBox;
    button60: Button;
    label4: &Label;
    textBox4: TextBox;
    label5: &Label;
    label1: &Label;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;
  var a,d,c:integer;
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
       6:button6.Text:=button(sender).text;
       7:button7.Text:=button(sender).text;
       8:button8.Text:=button(sender).text;
       9:button9.Text:=button(sender).text;
       10:button10.Text:=button(sender).text;
       11:button11.Text:=button(sender).text;
       12:button12.Text:=button(sender).text;
       13:button13.Text:=button(sender).text;
       14:button14.Text:=button(sender).text;
       15:button15.Text:=button(sender).text;
       16:button16.Text:=button(sender).text;
       17:button17.Text:=button(sender).text;
       18:button18.Text:=button(sender).text;
       19:button19.Text:=button(sender).text;
       20:button20.Text:=button(sender).text;
       21:button21.Text:=button(sender).text;
       22:button22.Text:=button(sender).text;
       23:button23.Text:=button(sender).text;
       24:button24.Text:=button(sender).text;
       25:button25.Text:=button(sender).text;
     end;
    textbox1.Text:='';
    end;
  end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  textbox2.Text:=textbox2.Text + button(sender).Text;
end;

procedure Form1.button59_Click(sender: Object; e: EventArgs);
var i,b:integer;
begin
  if textbox2.Text='' then label3.text:='Введите слово'else
  begin
    c:=c+1;
    for i:=1 to length(textbox2.Text) do
    begin
      inc(b);
    end;
    if c mod 2 = 1 then
    begin
      richtextbox1.Text:=richtextbox1.Text +textbox2.Text + ' - 1 игрок ' + chr(13);
      textbox2.Text:='';
      a:=a+b;
    end
    else
    begin
      richtextbox1.Text:=richtextbox1.Text +textbox2.Text + ' - 2 игрок ' + chr(13);
      textbox2.Text:='';
      d:=d+b;
    end;
    b:=0;
    textbox3.Text:=inttostr(a);
    textbox4.Text:=inttostr(d);
  end;
  
end;

procedure Form1.button60_Click(sender: Object; e: EventArgs);
begin
  textbox2.Text:='';
end;
end.
