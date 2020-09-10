// Максимальная пара, которая делится нв 241, 1-й элемент больше 2-ого
Const x=241;
var a,b,i,n,p1,p2,j,mx : integer;
dl : array [0..x-1] of integer;
begin
  readln(n);
  readln(a);
  mx:=0;
  for i:=0 to x-1 do
    dl[i]:=0;
  for i:=1 to n-1 do begin
    dl[a mod x]:=max(a,dl[a mod x]);
    readln(b);
    j:=( x - b mod x) mod x;
    if (dl[j]>b) and (dl[j]+b>mx) then
      (p1,p2,mx):=(dl[j],b,dl[j]+b);
    a:=b;
  end;
  writeln(p1,' ',p2)
end.