unit uCString;

interface

uses Math;

type
    cString = record
        data: array of char;
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
    SetLength(s.data, size);
    s.length := 0;
    s.capacity := size;
end;

procedure SetCStringValue(var s: cString; value: string);
var
    i: Integer;
begin
    s.length := Length(value);
    if s.length > s.capacity then
        s.length := s.capacity;
    for i := 1 to s.length do
        s.data[i - 1] := value[i];
end;

function GetCStringValue(s: cString): string;
var
    i: Integer;
    resultStr: string;
begin
    SetLength(resultStr, s.length);
    for i := 1 to s.length do
        resultStr[i] := s.data[i - 1];
    GetCStringValue := resultStr;
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
    i, j: Integer;
begin
    j := dest.length;
    for i := 0 to src.length - 1 do
    begin
        if j < dest.capacity then
        begin
            dest.data[j] := src.data[i];
            Inc(j);
        end
        else
            Break;
    end;
    dest.length := j;
end;

procedure CStringCopy(var dest: cString; src: cString);
var
    i: Integer;
begin
    dest.length := src.length;
    if dest.length > dest.capacity then
        dest.length := dest.capacity;
    for i := 0 to dest.length - 1 do
        dest.data[i] := src.data[i];
end;

function CStringCompare(s1, s2: cString): Integer;
var
    i, resul: Integer;
    
begin
    for i := 0 to Min(s1.length, s2.length) - 1 do
    begin
        if s1.data[i] < s2.data[i] then
           resul := -1
        else if s1.data[i] > s2.data[i] then
            resul:= 1
    end;
    if s1.length < s2.length then
        resul := -1
    else if s1.length > s2.length then
        resul := 1
    else
        resul := 0;
    CStringCompare := resul;
end;

procedure CStringToLower(var s: cString);
var
    i: Integer;
begin
    for i := 0 to s.length - 1 do
        s.data[i] := LowerCase(s.data[i]);
end;

procedure CStringToUpper(var s: cString);
var
    i: Integer;
begin
    for i := 0 to s.length - 1 do
        s.data[i] := UpCase(s.data[i]);
end;

end.