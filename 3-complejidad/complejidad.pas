program complejidad;

uses
    SysUtils, DateUtils;

const
    DELAY_COUNT = 12000;

var
    i: Integer;

procedure Delay;
var
    j: Integer;
begin
    for j := 1 to DELAY_COUNT do
        // hacer algo que consuma tiempo pero que no se vea en cosonla
        Write('');
end;

procedure Constante;
begin
    Delay;
end;

procedure Lineal(n: Integer);
var
    i: Integer;
begin
    for i := 1 to n do
        Delay;
end;

procedure Cuadratica(n: Integer);
var
    i, j: Integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            Delay;
end;

procedure Cubica(n: Integer);
var
    i, j, k: Integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            for k := 1 to n do
                Delay;
end;

procedure Logaritmica(n: Integer);
begin
    while n > 1 do
    begin
        Delay;
        n := n div 2;
    end;
end;

procedure LinealLogaritmica(n: Integer);
var
    i: Integer;
begin
    for i := 1 to n do
        Logaritmica(i);
end;

procedure Exponencial(n: Integer);
begin
    if n = 0 then
        Delay
    else
    begin
        Exponencial(n - 1);
        Exponencial(n - 1);
    end;
end;

procedure Ejemplos;
var
    startTime, endTime: TDateTime;
begin
    i := 20;

    WriteLn('Complejidad constante: O(1)');
    startTime := Now;
    Constante;
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad lineal: O(n)');
    startTime := Now;
    Lineal(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad cuadrática: O(n^2)');
    startTime := Now;
    Cuadratica(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad cúbica: O(n^3)');
    startTime := Now;
    Cubica(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad logarítmica: O(log n)');
    startTime := Now;
    Logaritmica(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad lineal-logarítmica: O(n log n)');
    startTime := Now;
    LinealLogaritmica(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');

    WriteLn('Complejidad exponencial: O(2^n)');
    startTime := Now;
    Exponencial(i);
    endTime := Now;
    WriteLn('Tiempo de ejecución: ', MilliSecondsBetween(endTime, startTime), ' ms');
end;

begin
    Ejemplos;
end.
