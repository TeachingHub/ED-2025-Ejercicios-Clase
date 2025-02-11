unit uTElement;

interface

type
    TElement = record
        data1: integer;
        data2: string[50];
    end;

procedure assign(var e: TElement; e2 : TElement);
function toString(e: TElement): string;

implementation

uses sysutils;

procedure assign(var e: TElement; e2 : TElement);
begin
    e.data1 := e2.data1;
    e.data2 := e2.data2;
end;

function toString(e: TElement): string;
begin
    toString := '(' + IntToStr(e.data1) + ', ' + e.data2 + ')';
end;

end.