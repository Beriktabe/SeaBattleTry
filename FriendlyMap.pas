unit FriendlyMap;

interface
uses math, Dialogs, SysUtils;
var
mapInLine: array[1..100] of integer;
blockedSpots: array[1..100] of integer;
hitMap: array[1..100] of integer;

procedure fill(ind, o, l:integer);
function checkIfFree(ind, o, l: integer):boolean;
procedure registerHit(ind: integer);
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
    {
    ShowMessage(IntToStr(o));
    ShowMessage(IntToStr(ind + i*o div 10));
    ShowMessage(IntToStr(ind div 10));
    ShowMessage(IntToStr(ind mod 10));  }
    //if ((ind + i*o) > 100) or (ind > 70)
    //if (ind + i*o) > 100 then exit;

    //if ((ind + i*o) > 100) or (ind > 70) or ((o = 1) and ((ind + i*o-1) div 10 > ind div 10) or (ind mod 10 = 0)) then checkIfFree := False;
    //if l = 0 then checkIfFree := True;
    if blockedSpots[ind + i*o] = 1 then checkIfFree := False;

  end;
end;

end.
