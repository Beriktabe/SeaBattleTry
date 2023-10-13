unit mapAndShip;

interface
uses math;
var
mapInLineEnemy: array[1..100] of integer;
blockedSpotsEnemy: array[1..100] of integer;

procedure fill(ind, o, l:integer);
function checkIfFree(ind, o, l: integer):boolean;
procedure gen4();
procedure gen3();
procedure gen2();
procedure gen1();
procedure genEnemyMap();

implementation

procedure fill(ind, o, l:integer);
var i: integer;
begin

  for i:=0 to l do begin
    mapInLineEnemy[ind + i*o]:=1;
    blockedSpotsEnemy[ind + i*o]:=1;
    if (ind + i*o-10) > 0 then 
      blockedSpotsEnemy[ind + i*o-10]:=1;
    if (ind + i*o-1) mod 10 <> 0 then 
      blockedSpotsEnemy[ind + i*o-1]:=1;
    if (ind + i*o+1) mod 10 <> 1 then 
      blockedSpotsEnemy[ind + i*o+1]:=1;
    if (ind + i*o+10) < 100 then
       blockedSpotsEnemy[ind + i*o+10]:=1;
  end;
end;

function checkIfFree(ind, o, l: integer):boolean; //random dot - check if blocked[ind] = 0 then try place
var g: integer;
begin
  checkIfFree := True;
  for g:=0 to l do
  begin
    if (ind + g*o) > 100 then break;
    if blockedSpotsEnemy[ind + g*o] = 1 then checkIfFree := False;

  end;
end;

procedure gen4();
var col,row,o: integer;
begin
  o:=RandomRange(1, 3);  //3
  if o=2 then o:=10;
  if o = 1 then begin
    col:=RandomRange(1, 8);//RandomRange(1, 8); right - o
    row:=RandomRange(0, 10); //7 + 1, 9 + 1
  end
  else
  begin
    col:=RandomRange(1, 11);//RandomRange(1, 8); down - o
    row:=RandomRange(0, 7);
  end;
  
  fill(row*10+col, o, 3);
end;

procedure gen3();
var col,row,o: integer;
begin
  o:=RandomRange(1, 3);
  if o=2 then o:=10;
  repeat
  if o = 1 then begin
    col:=RandomRange(1, 9);//RandomRange(1, 8); right - o
    row:=RandomRange(0, 10); //7 + 1, 9 + 1
  end
  else
  begin
    col:=RandomRange(1, 11);//RandomRange(1, 8); down - o
    row:=RandomRange(0, 8);
  end;
  until checkIfFree(row*10+col, o, 2);
  fill(row*10+col, o, 2);
end;

procedure gen2();
var col,row,o: integer;
begin
  
  repeat
  o:=RandomRange(1, 3);
  if o=2 then o:=10;

  if o = 1 then begin
    col:=RandomRange(1, 10);//RandomRange(1, 8); right - o
    row:=RandomRange(0, 10); //7 + 1, 9 + 1
  end
  else
  begin
    col:=RandomRange(1, 11);//RandomRange(1, 8); down - o
    row:=RandomRange(0, 9);
  end;
  until checkIfFree(row*10+col, o, 1);
  fill(row*10+col, o, 1);
end;

procedure gen1();
var col,row: integer;
begin
  
  repeat
    col:=RandomRange(1, 11);//RandomRange(1, 8); right - o
    row:=RandomRange(0, 10); // ---- 10
  until checkIfFree(row*10+col, 1, 0);
  fill(row*10+col, 1, 0);
end;

procedure genEnemyMap();
var i:integer;
begin
  for i:=1 to 100 do
  begin
  mapInLineEnemy[i] := 0;
  blockedSpotsEnemy[i] := 0;
  end;
  i:=0;
  gen4();
  while i < 2 do 
  begin
    gen3();
    inc(i);
  end;
  i:=0;
  while i < 3 do 
  begin
    gen2();
    inc(i);
  end;
  i:=0;
  while i < 4 do
  begin
    gen1();
    inc(i);
  end;
end;

end.
