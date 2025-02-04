program memoria;

uses
    SysUtils;

var
    intVar: Integer;
    floatVar: Real;
    charVar: Char;
    strVar: String;
    intArray: array[1..5] of Integer;
    i: Integer;

function holaMundo(): string;
begin
    holaMundo := 'Hola Mundo';
end;

begin
    intVar := 42;
    floatVar := 3.14;
    charVar := 'A';
    strVar := 'Hello, Pascal!';
    for i := 1 to 5 do
        intArray[i] := i * 10;

    Writeln('Memory addresses and sizes:');
    Writeln('Integer variable: Address = ', PtrUInt(@intVar), ', Size = ', SizeOf(intVar), ' bytes');
    Writeln('Real variable: Address = ', PtrUInt(@floatVar), ', Size = ', SizeOf(floatVar), ' bytes');
    Writeln('Char variable: Address = ', PtrUInt(@charVar), ', Size = ', SizeOf(charVar), ' bytes');
    Writeln('String variable: Address = ', PtrUInt(@strVar), ', Size = ', Length(strVar) + 1, ' bytes');
    Writeln('Integer array:');
    for i := 1 to 5 do
        Writeln('  Element ', i, ': Address = ', PtrUInt(@intArray[i]), ', Size = ', SizeOf(intArray[i]), ' bytes');



    Writeln('Function holaMundo: Address = ', PtrUInt(@holaMundo), ', Size = ', SizeOf(holaMundo), ' bytes');
    
    Readln;
end.