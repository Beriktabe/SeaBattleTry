unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, FriendlyMap, EnemyMap;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    PaintBox1: TPaintBox;
    PaintBox10: TPaintBox;
    PaintBox100: TPaintBox;
    PaintBox101: TPaintBox;
    PaintBox102: TPaintBox;
    PaintBox103: TPaintBox;
    PaintBox104: TPaintBox;
    PaintBox105: TPaintBox;
    PaintBox106: TPaintBox;
    PaintBox107: TPaintBox;
    PaintBox108: TPaintBox;
    PaintBox109: TPaintBox;
    PaintBox11: TPaintBox;
    PaintBox110: TPaintBox;
    PaintBox111: TPaintBox;
    PaintBox112: TPaintBox;
    PaintBox113: TPaintBox;
    PaintBox114: TPaintBox;
    PaintBox115: TPaintBox;
    PaintBox116: TPaintBox;
    PaintBox117: TPaintBox;
    PaintBox118: TPaintBox;
    PaintBox119: TPaintBox;
    PaintBox12: TPaintBox;
    PaintBox120: TPaintBox;
    PaintBox121: TPaintBox;
    PaintBox122: TPaintBox;
    PaintBox123: TPaintBox;
    PaintBox124: TPaintBox;
    PaintBox125: TPaintBox;
    PaintBox126: TPaintBox;
    PaintBox127: TPaintBox;
    PaintBox128: TPaintBox;
    PaintBox129: TPaintBox;
    PaintBox13: TPaintBox;
    PaintBox130: TPaintBox;
    PaintBox131: TPaintBox;
    PaintBox132: TPaintBox;
    PaintBox133: TPaintBox;
    PaintBox134: TPaintBox;
    PaintBox135: TPaintBox;
    PaintBox136: TPaintBox;
    PaintBox137: TPaintBox;
    PaintBox138: TPaintBox;
    PaintBox139: TPaintBox;
    PaintBox14: TPaintBox;
    PaintBox140: TPaintBox;
    PaintBox141: TPaintBox;
    PaintBox142: TPaintBox;
    PaintBox143: TPaintBox;
    PaintBox144: TPaintBox;
    PaintBox145: TPaintBox;
    PaintBox146: TPaintBox;
    PaintBox147: TPaintBox;
    PaintBox148: TPaintBox;
    PaintBox149: TPaintBox;
    PaintBox15: TPaintBox;
    PaintBox150: TPaintBox;
    PaintBox151: TPaintBox;
    PaintBox152: TPaintBox;
    PaintBox153: TPaintBox;
    PaintBox154: TPaintBox;
    PaintBox155: TPaintBox;
    PaintBox156: TPaintBox;
    PaintBox157: TPaintBox;
    PaintBox158: TPaintBox;
    PaintBox159: TPaintBox;
    PaintBox16: TPaintBox;
    PaintBox160: TPaintBox;
    PaintBox161: TPaintBox;
    PaintBox162: TPaintBox;
    PaintBox163: TPaintBox;
    PaintBox164: TPaintBox;
    PaintBox165: TPaintBox;
    PaintBox166: TPaintBox;
    PaintBox167: TPaintBox;
    PaintBox168: TPaintBox;
    PaintBox169: TPaintBox;
    PaintBox17: TPaintBox;
    PaintBox170: TPaintBox;
    PaintBox171: TPaintBox;
    PaintBox172: TPaintBox;
    PaintBox173: TPaintBox;
    PaintBox174: TPaintBox;
    PaintBox175: TPaintBox;
    PaintBox176: TPaintBox;
    PaintBox177: TPaintBox;
    PaintBox178: TPaintBox;
    PaintBox179: TPaintBox;
    PaintBox18: TPaintBox;
    PaintBox180: TPaintBox;
    PaintBox181: TPaintBox;
    PaintBox182: TPaintBox;
    PaintBox183: TPaintBox;
    PaintBox184: TPaintBox;
    PaintBox185: TPaintBox;
    PaintBox186: TPaintBox;
    PaintBox187: TPaintBox;
    PaintBox188: TPaintBox;
    PaintBox189: TPaintBox;
    PaintBox19: TPaintBox;
    PaintBox190: TPaintBox;
    PaintBox191: TPaintBox;
    PaintBox192: TPaintBox;
    PaintBox193: TPaintBox;
    PaintBox194: TPaintBox;
    PaintBox195: TPaintBox;
    PaintBox196: TPaintBox;
    PaintBox197: TPaintBox;
    PaintBox198: TPaintBox;
    PaintBox199: TPaintBox;
    PaintBox2: TPaintBox;
    PaintBox20: TPaintBox;
    PaintBox200: TPaintBox;
    PaintBox21: TPaintBox;
    PaintBox22: TPaintBox;
    PaintBox23: TPaintBox;
    PaintBox24: TPaintBox;
    PaintBox25: TPaintBox;
    PaintBox26: TPaintBox;
    PaintBox27: TPaintBox;
    PaintBox28: TPaintBox;
    PaintBox29: TPaintBox;
    PaintBox3: TPaintBox;
    PaintBox30: TPaintBox;
    PaintBox31: TPaintBox;
    PaintBox32: TPaintBox;
    PaintBox33: TPaintBox;
    PaintBox34: TPaintBox;
    PaintBox35: TPaintBox;
    PaintBox36: TPaintBox;
    PaintBox37: TPaintBox;
    PaintBox38: TPaintBox;
    PaintBox39: TPaintBox;
    PaintBox4: TPaintBox;
    PaintBox40: TPaintBox;
    PaintBox41: TPaintBox;
    PaintBox42: TPaintBox;
    PaintBox43: TPaintBox;
    PaintBox44: TPaintBox;
    PaintBox45: TPaintBox;
    PaintBox46: TPaintBox;
    PaintBox47: TPaintBox;
    PaintBox48: TPaintBox;
    PaintBox49: TPaintBox;
    PaintBox5: TPaintBox;
    PaintBox50: TPaintBox;
    PaintBox51: TPaintBox;
    PaintBox52: TPaintBox;
    PaintBox53: TPaintBox;
    PaintBox54: TPaintBox;
    PaintBox55: TPaintBox;
    PaintBox56: TPaintBox;
    PaintBox57: TPaintBox;
    PaintBox58: TPaintBox;
    PaintBox59: TPaintBox;
    PaintBox6: TPaintBox;
    PaintBox60: TPaintBox;
    PaintBox61: TPaintBox;
    PaintBox62: TPaintBox;
    PaintBox63: TPaintBox;
    PaintBox64: TPaintBox;
    PaintBox65: TPaintBox;
    PaintBox66: TPaintBox;
    PaintBox67: TPaintBox;
    PaintBox68: TPaintBox;
    PaintBox69: TPaintBox;
    PaintBox7: TPaintBox;
    PaintBox70: TPaintBox;
    PaintBox71: TPaintBox;
    PaintBox72: TPaintBox;
    PaintBox73: TPaintBox;
    PaintBox74: TPaintBox;
    PaintBox75: TPaintBox;
    PaintBox76: TPaintBox;
    PaintBox77: TPaintBox;
    PaintBox78: TPaintBox;
    PaintBox79: TPaintBox;
    PaintBox8: TPaintBox;
    PaintBox80: TPaintBox;
    PaintBox81: TPaintBox;
    PaintBox82: TPaintBox;
    PaintBox83: TPaintBox;
    PaintBox84: TPaintBox;
    PaintBox85: TPaintBox;
    PaintBox86: TPaintBox;
    PaintBox87: TPaintBox;
    PaintBox88: TPaintBox;
    PaintBox89: TPaintBox;
    PaintBox9: TPaintBox;
    PaintBox90: TPaintBox;
    PaintBox91: TPaintBox;
    PaintBox92: TPaintBox;
    PaintBox93: TPaintBox;
    PaintBox94: TPaintBox;
    PaintBox95: TPaintBox;
    PaintBox96: TPaintBox;
    PaintBox97: TPaintBox;
    PaintBox98: TPaintBox;
    PaintBox99: TPaintBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OnFriendlyCellClick(Sender: TObject);
    procedure OnEnemyCellClick(Sender: TObject);
    procedure onMouseEnter(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Started: boolean;
  FriendlyCells: array [1..100] of TPaintBox;
  EnemyCells: array [1..100] of TPaintBox;
  Cells: array [1..200] of TPaintBox;
  SelectedCell: integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.OnFriendlyCellClick(Sender: TObject);
var pb: TPaintBox;
    tempStr: string;
    i,g: integer;
begin
     if Started = False then exit;
     //if SelectedCell = 0 then
     //begin

     pb := TPaintBox(Sender);
     //pb.Canvas.Brush.Color:=clBlue;
     //pb.Canvas.FillRect(pb.ClientRect);

     tempStr := pb.Name;
     //ShowMessage(tempStr);
     Delete(tempStr, 1, 8);
     SelectedCell := StrToInt(tempStr);

     if ComboBox2.ItemIndex = 0 then g:=1
     else g:=10;

     if FriendlyMap.checkIfFree(SelectedCell, g, ComboBox1.ItemIndex) then
     begin

          for i:= 0 to ComboBox1.ItemIndex do
          begin
               FriendlyMap.fill(SelectedCell, g, ComboBox1.ItemIndex);
               pb := TPaintBox(FindComponent('PaintBox'+intToStr(SelectedCell + i*g)));
               pb.Canvas.Brush.Color:=clAqua;
               pb.Canvas.FillRect(pb.ClientRect);
          end;
     end;

end;

procedure TForm1.OnEnemyCellClick(Sender: TObject);
var pb: TPaintBox;
  ind: integer;
  tempStr: string;
begin
     if Started = False then exit;
     pb := TPaintBox(Sender);
     //pb.Canvas.Brush.Color:=clRed;
     //pb.Canvas.FillRect(pb.ClientRect);
     tempStr := pb.Name;
     Delete(tempStr, 1, 8);
     ind := StrToInt(tempStr);

     if EnemyMap.mapInLine[ind-100] = 1 then
        pb.Canvas.Brush.Color:=clGreen
     else
         pb.Canvas.Brush.Color:=clRed;
     pb.Canvas.FillRect(pb.ClientRect);
        //      for i:= 1 to 100 do
        // begin
        // if mapInLine[i] = 1 then
        //    begin
        //     pb := EnemyCells[i];
        //     pb.Canvas.Brush.Color:=clRed;
        //     pb.Canvas.FillRect(pb.ClientRect);
         //    end;
         //end;

end;

procedure TForm1.onMouseEnter(Sender: TObject);
var pb: TPaintBox;
begin
      if SelectedCell = 0 then exit;
      pb := TPaintBox(Sender);
      pb.Canvas.Brush.Color:=clBlue;
      pb.Canvas.FillRect(pb.ClientRect);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  pb: TPaintBox;
  i: integer;
begin
     if Started then
     begin
       Started:=False;
       Button1.Caption:= 'Start';
     end
     else
     begin
         Randomize;
         EnemyMap.clear();
         FriendlyMap.clear();
         EnemyMap.genEnemyMap();
         for i:= 1 to 200 do
         begin
         pb := Cells[i];

         pb.Canvas.Brush.Color:=clWhite;
         pb.Canvas.FillRect(pb.ClientRect);

         pb.Canvas.Pen.Color:=clBlack;
         pb.Canvas.Rectangle(pb.ClientRect);
         end;


         Started := True;
         Button1.Caption:= 'Stop';
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
  pb: TPaintBox;
begin
    for i:= 1 to 100 do
    begin
         pb := Cells[i];
         if FriendlyMap.mapInLine[i] = 1 then
         begin
         pb.Canvas.Brush.Color:=clAqua;
         pb.Canvas.FillRect(pb.ClientRect);
         end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
  pb: TPaintBox;
begin
    ComboBox1.ItemIndex:=3;
    ComboBox2.ItemIndex:=1;
    for i:= 1 to 100 do
    begin
    pb := TPaintBox(FindComponent('PaintBox'+intToStr(i)));
    pb.OnClick:=@OnFriendlyCellClick;
    //pb.OnMouseEnter:= @onMouseEnter;
    FriendlyCells[i] := pb;
    Cells[i] := pb;
    end;

    for i:= 101 to 200 do
    begin
    pb := TPaintBox(FindComponent('PaintBox'+intToStr(i)));
    pb.OnClick:=@OnEnemyCellClick;
    EnemyCells[i-100] := pb;
    Cells[i] := pb;
    end;
end;



end.
