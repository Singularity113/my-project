unit gp_7x7;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, LazUTF8;

type

  { TForm1 }

  TForm1 = class(TForm)
    accept: TButton;
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn36: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn40: TBitBtn;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    BitBtn47: TBitBtn;
    BitBtn48: TBitBtn;
    BitBtn49: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    check: TButton;
    Clear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    point1: TEdit;
    point2: TEdit;
    pole_bukv: TEdit;
    pole_check: TEdit;
    pole_slov: TEdit;
    procedure acceptClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure checkClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  g: array [1..49] of integer; //массив для занятых ячеек
  a, d, c, q, m: integer;
  name_a, name_b: string; //имена игроков

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button26Click(Sender: TObject);
var
  k, i, j, n, l: integer;
begin
  label2.Caption := '';
  i := 1; //счетчик для прохождения по циклу
  j := 0; //счетчик вставленных букв
  n := 1;
  l := 0;
  if pole_bukv.Text = '' then
    label2.Caption := 'Введите номер ячейки'
  else
  begin
    k := StrToInt(pole_bukv.Text); //Номер заполняемой ячейки
    if k <= 49 then //проверка ячеек на игровом поле
    begin
      while (l < 1) and (n <> 49) do
      begin
        if (g[n] - k = 7) or (g[n] - k = -7) then
          l := 1
        else
          l := 0;
        Inc(n);
      end;
      if l = 1 then
      begin
        while (j < 1) and (i <> 49) do //цикл для проверки
        begin
          if g[i] = k then
          begin
            label2.Caption := 'Поле уже занято';
            j := 1;
            //переменная для определения занятого поля
          end
          else
            j := 0;
          Inc(i);//увеличение шага цикла
        end;
        pole_bukv.Text := '';
        if j = 0 then
          if q < 1 then// вставка только одной буквы
          begin
            case k of
              1:
              begin
                bitbtn1.Caption := TButton(Sender).Caption;
                bitbtn1.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              2:
              begin
                bitbtn2.Caption := TButton(Sender).Caption;
                bitbtn2.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              3:
              begin
                bitbtn3.Caption := TButton(Sender).Caption;
                bitbtn3.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              4:
              begin
                bitbtn4.Caption := TButton(Sender).Caption;
                bitbtn4.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              5:
              begin
                bitbtn5.Caption := TButton(Sender).Caption;
                bitbtn5.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              6:
              begin
                bitbtn6.Caption := TButton(Sender).Caption;
                bitbtn6.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              7:
              begin
                bitbtn7.Caption := TButton(Sender).Caption;
                bitbtn7.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              8:
              begin
                bitbtn8.Caption := TButton(Sender).Caption;
                bitbtn8.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              9:
              begin
                bitbtn9.Caption := TButton(Sender).Caption;
                bitbtn9.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              10:
              begin
                bitbtn10.Caption := TButton(Sender).Caption;
                bitbtn10.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              16:
              begin
                bitbtn16.Caption := TButton(Sender).Caption;
                bitbtn16.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              17:
              begin
                bitbtn17.Caption := TButton(Sender).Caption;
                bitbtn17.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              18:
              begin
                bitbtn18.Caption := TButton(Sender).Caption;
                bitbtn18.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              19:
              begin
                bitbtn19.Caption := TButton(Sender).Caption;
                bitbtn19.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              20:
              begin
                bitbtn20.Caption := TButton(Sender).Caption;
                bitbtn20.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              21:
              begin
                bitbtn21.Caption := TButton(Sender).Caption;
                bitbtn21.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              22:
              begin
                bitbtn22.Caption := TButton(Sender).Caption;
                bitbtn22.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              23:
              begin
                bitbtn23.Caption := TButton(Sender).Caption;
                bitbtn23.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              24:
              begin
                bitbtn24.Caption := TButton(Sender).Caption;
                bitbtn24.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              25:
              begin
                bitbtn25.Caption := TButton(Sender).Caption;
                bitbtn25.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              26:
              begin
                bitbtn26.Caption := TButton(Sender).Caption;
                bitbtn26.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              27:
              begin
                bitbtn27.Caption := TButton(Sender).Caption;
                bitbtn27.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              28:
              begin
                bitbtn28.Caption := TButton(Sender).Caption;
                bitbtn28.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              29:
              begin
                bitbtn29.Caption := TButton(Sender).Caption;
                bitbtn29.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              30:
              begin
                bitbtn30.Caption := TButton(Sender).Caption;
                bitbtn30.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              31:
              begin
                bitbtn31.Caption := TButton(Sender).Caption;
                bitbtn31.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              32:
              begin
                bitbtn32.Caption := TButton(Sender).Caption;
                bitbtn32.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              33:
              begin
                bitbtn33.Caption := TButton(Sender).Caption;
                bitbtn33.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              34:
              begin
                bitbtn34.Caption := TButton(Sender).Caption;
                bitbtn34.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              35:
              begin
                bitbtn35.Caption := TButton(Sender).Caption;
                bitbtn35.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              36:
              begin
                bitbtn36.Caption := TButton(Sender).Caption;
                bitbtn36.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              37:
              begin
                bitbtn37.Caption := TButton(Sender).Caption;
                bitbtn37.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              38:
              begin
                bitbtn38.Caption := TButton(Sender).Caption;
                bitbtn38.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              39:
              begin
                bitbtn39.Caption := TButton(Sender).Caption;
                bitbtn39.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              40:
              begin
                bitbtn40.Caption := TButton(Sender).Caption;
                bitbtn40.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              41:
              begin
                bitbtn41.Caption := TButton(Sender).Caption;
                bitbtn41.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              42:
              begin
                bitbtn42.Caption := TButton(Sender).Caption;
                bitbtn42.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              43:
              begin
                bitbtn43.Caption := TButton(Sender).Caption;
                bitbtn43.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              44:
              begin
                bitbtn44.Caption := TButton(Sender).Caption;
                bitbtn44.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              45:
              begin
                bitbtn45.Caption := TButton(Sender).Caption;
                bitbtn45.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              46:
              begin
                bitbtn46.Caption := TButton(Sender).Caption;
                bitbtn46.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              47:
              begin
                bitbtn47.Caption := TButton(Sender).Caption;
                bitbtn47.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              48:
              begin
                bitbtn48.Caption := TButton(Sender).Caption;
                bitbtn48.Font.Color := button26.Font.Color;
                Inc(q);
              end;
              49:
              begin
                bitbtn49.Caption := TButton(Sender).Caption;
                bitbtn49.Font.Color := button26.Font.Color;
                Inc(q);
              end;
            end;
            g[k] := k;//записть ячейки в массив занятых ячеек
          end
          else
            label2.Caption :='Вы можете вставить только 1 букву';
      end
      else
        label2.Caption :='вставьте букву рядом с заполненным полем';
    end
    else
      label2.Caption := 'Такой ячейки нет';
  end;
end;

procedure TForm1.checkClick(Sender: TObject);
var
  f1: textfile;
  s, s1: string;
  o: boolean;
begin
  label7.Caption := '';
  o := False;
  s := pole_check.Text;
  AssignFile(f1, 'slovar.txt'); //подключение словаря
  reset(f1);
  while not EOF(f1) do
  begin
    readln(f1, s1);
    if s = s1 then
      o := True;
  end;
  if o then
    label7.Caption := 'Слово есть в словаре'
  else
    label7.Caption := 'Слова нет в словаре';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  pole_slov.Text := pole_slov.Text + AnsiLowerCase(TBitBtn(Sender).Caption);
  //запись слова и преобразование букв к нижнему регистру
end;

procedure TForm1.acceptClick(Sender: TObject);
var
  b, r, f: integer;
  s, s1, s2: string;
  f1, f2: textfile;
begin
  label7.Caption := '';
  f := 0;
  r := 0;
  if ((pole_slov.Text = 'авокадо') and (m = 0)) or
    ((pole_slov.Text = 'кальций') and (m = 1)) or
    ((pole_slov.Text = 'отрезок') and (m = 2)) or
    ((pole_slov.Text = 'парафин') and (m = 3)) or
    ((pole_slov.Text = 'фолиант') and (m = 4)) then
    //Проверка на ввод главного слова
    label5.Caption := 'Это главное слово'
  else
  if pole_slov.Text = '' then
    label5.Caption := 'Введите слово'
  else
  if q = 0 then
    label5.Caption := 'Вставьте букву'
  else
  begin
    label5.Caption := '';
    s := pole_slov.Text;
    AssignFile(f1, 'slovar.txt'); //подключение словаря
    AssignFile(f2, 'game.txt');//файл для записи слов игроков
    reset(f1);//файл открыт для чтения
    b := UTF8Length(pole_slov.Text);//длина записанного слова
    while not EOF(f1) do
    begin
      readln(f1, s1); //считывание словаря
      if s = s1 then //поиск слова в словаре
      begin
        reset(f2);
        while not EOF(f2) do
        begin
          readln(f2, s2);
          //считывание слов записанных игроками
          if s = s2 then
            f := 1;
        end;
        closefile(f2);
        if f = 1 then
          label5.Caption := 'Слово уже было'
        else
        begin
          append(f2);//файл открыт для добавления слов
          if c mod 2 = 0 then
          begin
            Memo1.Lines.Add(pole_slov.Text + ' - ' + name_a + chr(13));
            //запись слова в поле слов
            a := a + b; //счетчик очков 1 игрока
            writeln(f2, s);//запись слова
            closefile(f2);
          end
          else
          begin
            Memo1.Lines.Add(pole_slov.Text + ' - ' + name_b + chr(13));
            d := d + b; // счетчик очков 2 игрока
            writeln(f2, s);//запись слова
            closefile(f2);
          end;
          pole_slov.Text := '';
          label5.Caption := '';
          r := 1; //наличие слова в словаре
          q := 0;
          // обнуление счетчика вставленных букв за ход
          c := c + 1;//очередность хода
        end;
      end
      else
      if (r <> 1) and (f <> 1) then
        label5.Caption := 'Слова нет в словаре';
    end;
    b := 0;
    point1.Text := IntToStr(a);//вывод очков 1 игрока
    point2.Text := IntToStr(d);//вывод очков 2 игрока
    Closefile(f1);
  end;
  if c = 42 then
  begin
    if a > d then
      ShowMessage('победил игрок - ' + label3.Caption);
    if a < d then
      ShowMessage('победил игрок - ' + label3.Caption);
    if a = d then
      ShowMessage('Ничья');
  end;
end;

procedure TForm1.clearClick(Sender: TObject);
begin
  pole_slov.Text := '';
end;

procedure TForm1.FormClose(Sender: TObject);
//Сохранение составленных слов после закрытия программы
var
  f: textfile;
  i: integer;
begin
  assignfile(f, 'result_7х7.txt');
  rewrite(f);//файл открыт для записи
  for i := 0 to memo1.Lines.Count - 1 do
    writeln(f, memo1.Lines[i]);
  //запись результатов игры поля 7х7
  closefile(f);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  f2: textfile;
  i: integer;
begin
  bitbtn1.Caption := '1';
  bitbtn1.Font.Color := clSilver;
  bitbtn2.Caption := '2';
  bitbtn2.Font.Color := clSilver;
  bitbtn3.Caption := '3';
  bitbtn3.Font.Color := clSilver;
  bitbtn4.Caption := '4';
  bitbtn4.Font.Color := clSilver;
  bitbtn5.Caption := '5';
  bitbtn5.Font.Color := clSilver;
  bitbtn6.Caption := '6';
  bitbtn6.Font.Color := clSilver;
  bitbtn7.Caption := '7';
  bitbtn7.Font.Color := clSilver;
  bitbtn8.Caption := '8';
  bitbtn8.Font.Color := clSilver;
  bitbtn9.Caption := '9';
  bitbtn9.Font.Color := clSilver;
  bitbtn10.Caption := '10';
  bitbtn10.Font.Color := clSilver;
  bitbtn16.Caption := '16';
  bitbtn16.Font.Color := clSilver;
  bitbtn17.Caption := '17';
  bitbtn17.Font.Color := clSilver;
  bitbtn18.Caption := '18';
  bitbtn18.Font.Color := clSilver;
  bitbtn19.Caption := '19';
  bitbtn19.Font.Color := clSilver;
  bitbtn20.Caption := '20';
  bitbtn20.Font.Color := clSilver;
  bitbtn21.Caption := '21';
  bitbtn21.Font.Color := clSilver;
  bitbtn29.Caption := '29';
  bitbtn29.Font.Color := clSilver;
  bitbtn30.Caption := '30';
  bitbtn30.Font.Color := clSilver;
  bitbtn31.Caption := '31';
  bitbtn31.Font.Color := clSilver;
  bitbtn32.Caption := '32';
  bitbtn32.Font.Color := clSilver;
  bitbtn33.Caption := '33';
  bitbtn33.Font.Color := clSilver;
  bitbtn34.Caption := '34';
  bitbtn34.Font.Color := clSilver;
  bitbtn35.Caption := '35';
  bitbtn35.Font.Color := clSilver;
  bitbtn36.Caption := '36';
  bitbtn36.Font.Color := clSilver;
  bitbtn37.Caption := '37';
  bitbtn37.Font.Color := clSilver;
  bitbtn38.Caption := '38';
  bitbtn38.Font.Color := clSilver;
  bitbtn39.Caption := '39';
  bitbtn39.Font.Color := clSilver;
  bitbtn40.Caption := '40';
  bitbtn40.Font.Color := clSilver;
  bitbtn41.Caption := '41';
  bitbtn41.Font.Color := clSilver;
  bitbtn42.Caption := '42';
  bitbtn42.Font.Color := clSilver;
  bitbtn43.Caption := '43';
  bitbtn43.Font.Color := clSilver;
  bitbtn44.Caption := '44';
  bitbtn44.Font.Color := clSilver;
  bitbtn45.Caption := '45';
  bitbtn45.Font.Color := clSilver;
  bitbtn46.Caption := '46';
  bitbtn46.Font.Color := clSilver;
  bitbtn47.Caption := '47';
  bitbtn47.Font.Color := clSilver;
  bitbtn48.Caption := '48';
  bitbtn48.Font.Color := clSilver;
  bitbtn49.Caption := '49';
  bitbtn49.Font.Color := clSilver;
  pole_bukv.Text := '';
  pole_slov.Text := '';
  pole_check.Text := '';
  memo1.Lines.Clear;
  point1.Text := '';
  point2.Text := '';
  a := 0;
  d := 0;
  c := 0;
  q := 0;
  m := 0;
  for i := 1 to 49 do
    g[i] := 0;
  g[22] := 22;
  g[23] := 23;
  g[24] := 24;
  g[25] := 25;
  g[26] := 26;
  g[27] := 27;
  g[28] := 28;//главное слово в массиве занятых ячеек (22-28)
  assignfile(f2, 'game.txt');
  rewrite(f2);
  Write(f2, '');
  Closefile(f2);
  if name_a = '' then
  begin
    name_a := 'Игрок 1';
    label3.Caption := name_a;
  end
  else
    label3.Caption := name_a;
  if name_b = '' then
  begin
    name_b := 'Игрок 2';
    label4.Caption := name_b;
  end
  else
    label4.Caption := name_b;
  m := random(5);
  case m of
    0:
    begin
      Bitbtn22.Caption := 'А';
      Bitbtn23.Caption := 'В';
      Bitbtn24.Caption := 'О';
      Bitbtn25.Caption := 'К';
      Bitbtn26.Caption := 'А';
      Bitbtn27.Caption := 'Д';
      Bitbtn28.Caption := 'О';
    end;
    1:
    begin
      Bitbtn22.Caption := 'К';
      Bitbtn23.Caption := 'А';
      Bitbtn24.Caption := 'Л';
      Bitbtn25.Caption := 'Ь';
      Bitbtn26.Caption := 'Ц';
      Bitbtn27.Caption := 'И';
      Bitbtn28.Caption := 'Й';
    end;
    2:
    begin
      Bitbtn22.Caption := 'О';
      Bitbtn23.Caption := 'Т';
      Bitbtn24.Caption := 'Р';
      Bitbtn25.Caption := 'Е';
      Bitbtn26.Caption := 'З';
      Bitbtn27.Caption := 'О';
      Bitbtn28.Caption := 'К';
    end;
    3:
    begin
      Bitbtn22.Caption := 'П';
      Bitbtn23.Caption := 'А';
      Bitbtn24.Caption := 'Р';
      Bitbtn25.Caption := 'А';
      Bitbtn26.Caption := 'Ф';
      Bitbtn27.Caption := 'И';
      Bitbtn28.Caption := 'Н';
    end;
    4:
    begin
      Bitbtn22.Caption := 'Ф';
      Bitbtn23.Caption := 'О';
      Bitbtn24.Caption := 'Л';
      Bitbtn25.Caption := 'И';
      Bitbtn26.Caption := 'А';
      Bitbtn27.Caption := 'Н';
      Bitbtn28.Caption := 'Т';
    end;
  end;
end;

end.
