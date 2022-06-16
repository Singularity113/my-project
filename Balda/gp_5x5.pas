unit gp_5x5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  LazUTF8;

type

  { TForm2 }

  TForm2 = class(TForm)
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    check: TButton;
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
    accept: TButton;
    Clear: TButton;
    Label6: TLabel;
    Label7: TLabel;
    pole_check: TEdit;
    Label5: TLabel;
    point1: TEdit;
    point2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    pole_slov: TEdit;
    Label2: TLabel;
    pole_bukv: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
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
  Form2: TForm2;
  g: array [1..25] of integer; //массив для занятых ячеек
  a, d, c, q, m: integer;
  name_a, name_b: string; //имена игроков

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button26Click(Sender: TObject);
var
  k, i, j, n, l: integer;
begin
  label2.Caption := '';
  i := 1; //счетчик для прохождения по циклу
  j := 0; //счетчик вставленных букв
  l := 0;
  n := 1;
  if pole_bukv.Text = '' then
    label2.Caption := 'Введите номер ячейки'
  else
  begin
    k := StrToInt(pole_bukv.Text); //Номер заполняемой ячейки
    if k <= 25 then //проверка ячеек на игровом поле
    begin
      while (l < 1) and (n <> 25) do
      begin
        if (g[n] - k = 5) or (g[n] - k = -5) then
          l := 1
        else
          l := 0;
        Inc(n);
      end;
      if l = 1 then
      begin
        while (j < 1) and (i <> 25) do //цикл для проверки
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
            end;
            g[k] := k;
            //записть ячейки в массив занятых ячеек
          end
          else
            label2.Caption :=
              'Вы можете вставить только 1 букву';
      end
      else
        label2.Caption :=
          'вставьте букву рядом с заполненным полем';
    end
    else
      label2.Caption := 'Такой ячейки нет';
  end;
end;

procedure TForm2.checkClick(Sender: TObject);
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

procedure TForm2.clearClick(Sender: TObject);
begin
  pole_slov.Text := '';
end;

procedure TForm2.FormClose(Sender: TObject);
//Сохранение составленных слов после закрытия программы
var
  f: textfile;
  i: integer;
begin
  assignfile(f, 'result_5х5.txt');
  rewrite(f);//файл открыт для записи
  for i := 0 to memo1.Lines.Count - 1 do
    writeln(f, memo1.Lines[i]);
  //запись результатов игры поля 5х5
  closefile(f);
end;

procedure TForm2.FormShow(Sender: TObject);
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
  bitbtn22.Caption := '22';
  bitbtn22.Font.Color := clSilver;
  bitbtn23.Caption := '23';
  bitbtn23.Font.Color := clSilver;
  bitbtn24.Caption := '24';
  bitbtn24.Font.Color := clSilver;
  bitbtn25.Caption := '25';
  bitbtn25.Font.Color := clSilver;
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
  for i := 1 to 25 do
    g[i] := 0;
  g[11] := 11;
  g[12] := 12;
  g[13] := 13;
  g[14] := 14;
  g[15] := 15;  //главное слово в массиве занятых ячеек (11-15)
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
      Bitbtn11.Caption := 'Б';
      Bitbtn12.Caption := 'А';
      Bitbtn13.Caption := 'Л';
      Bitbtn14.Caption := 'Д';
      Bitbtn15.Caption := 'А';
    end;
    1:
    begin
      Bitbtn11.Caption := 'И';
      Bitbtn12.Caption := 'С';
      Bitbtn13.Caption := 'К';
      Bitbtn14.Caption := 'Р';
      Bitbtn15.Caption := 'А';
    end;
    2:
    begin
      Bitbtn11.Caption := 'Ш';
      Bitbtn12.Caption := 'Т';
      Bitbtn13.Caption := 'О';
      Bitbtn14.Caption := 'Р';
      Bitbtn15.Caption := 'М';
    end;
    3:
    begin
      Bitbtn11.Caption := 'П';
      Bitbtn12.Caption := 'А';
      Bitbtn13.Caption := 'Р';
      Bitbtn14.Caption := 'Т';
      Bitbtn15.Caption := 'А';
    end;
    4:
    begin
      Bitbtn11.Caption := 'К';
      Bitbtn12.Caption := 'И';
      Bitbtn13.Caption := 'О';
      Bitbtn14.Caption := 'С';
      Bitbtn15.Caption := 'К';
    end;
  end;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  pole_slov.Text := pole_slov.Text + AnsiLowerCase(TBitBtn(Sender).Caption);
  //запись слова и преобразование букв к нижнему регистру
end;

procedure TForm2.acceptClick(Sender: TObject);
var
  b, r, f: integer;
  s, s1, s2: string;
  f1, f2: textfile;
begin
  label7.Caption := '';
  f := 0;
  r := 0;
  if ((pole_slov.Text = 'балда') and (m = 0)) or
    ((pole_slov.Text = 'парта') and (m = 3)) or
    ((pole_slov.Text = 'шторм') and (m = 2)) or
    ((pole_slov.Text = 'искра') and (m = 1)) or
    ((pole_slov.Text = 'киоск') and (m = 4)) then
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
  if c = 20 then
  begin
    if a > d then
      ShowMessage('победил игрок - ' + label3.Caption);
    if a < d then
      ShowMessage('победил игрок - ' + label3.Caption);
    if a = d then
      ShowMessage('Ничья');
  end;
end;


end.
