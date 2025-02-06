unit uCString;

interface

uses Math;

type
    cString = record
        data: string[255];
        length: Integer;
        capacity: Integer;
    end;

procedure CreateCString(var s: cString; size: Integer);
procedure SetCStringValue(var s: cString; value: string);
function GetCStringValue(s: cString): string;
function CStringLength(s: cString): Integer;
function CStringCapacity(s: cString): Integer;
procedure CStringCat(var dest: cString; src: cString);
procedure CStringCopy(var dest: cString; src: cString);
function CStringCompare(s1, s2: cString): Integer;
procedure CStringToLower(var s: cString);
procedure CStringToUpper(var s: cString);

implementation

procedure CreateCString(var s: cString; size: Integer);
begin   
    s.data := '';
    s.length := 0;
    s.capacity := size;
end;

procedure SetCStringValue(var s: cString; value: string);
var
    i: Integer;
begin
    s.length := Min(Length(value), s.capacity);
    for i := 1 to s.length do
        s.data[i] := value[i];
end;

function GetCStringValue(s: cString): string;
var
    i: Integer;
    result: string;
begin
    result := '';
    for i := 1 to s.length do
        result := result + s.data[i];
    GetCStringValue := result;
end;

function CStringLength(s: cString): Integer;
begin
    CStringLength := s.length;
end;

function CStringCapacity(s: cString): Integer;
begin
    CStringCapacity := s.capacity;
end;

procedure CStringCat(var dest: cString; src: cString);
var
    i, availableSpace: Integer;
begin
    availableSpace := dest.capacity - dest.length;
    for i := 1 to Min(src.length, availableSpace) do
        dest.data[dest.length + i] := src.data[i];
    dest.length := Min(dest.length + src.length, dest.capacity);
end;

procedure CStringCopy(var dest: cString; src: cString);
var
    i: Integer;
begin
    dest.length := Min(src.length, dest.capacity);
    for i := 1 to dest.length do
        dest.data[i] := src.data[i];
end;

{ 0 if strings are equal
  1 if the first non-matching character in str1 is greater (in ASCII) than that of str2.
 -1 if the first non-matching character in str1 is lower (in ASCII) than that of str2.}
function CStringCompare(s1, s2: cString): Integer;
var
    i, res: Integer;
    dis: boolean;
begin
    res := 0;
    dis := False;
    i := 1;
    while (i <= Min(s1.length, s2.length)) and not dis do
    begin
        if s1.data[i] <> s2.data[i] then
        begin
            dis := True;
            if s1.data[i] > s2.data[i] then
                res := 1
            else
                res := -1;
        end;
        Inc(i);
    end;
    if not dis then
    begin
        if s1.length > s2.length then
            res := 1
        else if s1.length < s2.length then
            res := -1;
    end;
    CStringCompare := res;
end;

procedure CStringToLower(var s: cString);
var
    i: Integer;
begin
    for i := 1 to s.length do
        s.data[i] := LowerCase(s.data[i]);
end;

procedure CStringToUpper(var s: cString);
var
    i: Integer;
begin
    for i := 1 to s.length do
        s.data[i] := UpCase(s.data[i]);
end;

end.