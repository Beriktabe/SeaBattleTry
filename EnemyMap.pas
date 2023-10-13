unit EnemyMap;

interface
uses math;
var
mapInLine: array[1..100] of integer;
blockedSpots: array[1..100] of integer;
hitMap: array[1..100] of integer;

procedure fill(ind, o, l:integer);
function checkIfFree(ind, o, l: integer):boolean;
procedure registerHit(ind: integer);
procedure gen4();
procedure gen3();
procedure gen2();
procedure gen1();
procedure genEnemyMap();
procedure clear();

implementation

procedure clear();
var i: integer;
begin
for i := 1 to 100 do
	begin
	mapInLine[i] := 0;
	blockedSpots[i] := 0;
	hitMap[i] := 0;
	end;
end;

procedure registerHit(ind: integer);
begin
	hitMap[ind] := 1;
end;

procedure fill(ind, o, l:integer);
var i: integer;
begin

  for i:=0 to l do begin
    mapInLine[ind + i*o]:=1;
    blockedSpots[ind + i*o]:=1;
    if (ind + i*o-10) > 0 then 
      blockedSpots[ind + i*o-10]:=1;
    if (ind + i*o-1) mod 10 <> 0 then
      begin
           blockedSpots[ind + i*o-1]:=1;
           if (ind + i*o-11) > 0 then
              blockedSpots[ind + i*o-11]:=1;
           if (ind + i*o+9) < 101 then
              blockedSpots[ind + i*o+9]:=1;
      end;

    if (ind + i*o+1) mod 10 <> 1 then
      begin
           blockedSpots[ind + i*o+1]:=1;
           if (ind + i*o-9) > 0 then
              blockedSpots[ind + i*o-9]:=1;
           if (ind + i*o+11) < 101 then
              blockedSpots[ind + i*o+11]:=1;
      end;

    if (ind + i*o+10) < 101 then
       blockedSpots[ind + i*o+10]:=1;

  end;
end;

function checkIfFree(ind, o, l: integer):boolean; //random dot - check if blocked[ind] = 0 then try place
var i: integer;
begin
  checkIfFree := True;
  for i:=0 to l do
  begin
    if (ind + i*o) > 100 then checkIfFree := False;
    if blockedSpots[ind + i*o] = 1 then checkIfFree := False;

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
  mapInLine[i] := 0;
  blockedSpots[i] := 0;
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
