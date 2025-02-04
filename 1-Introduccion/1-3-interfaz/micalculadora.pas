program micalculadora;

uses
    calculadora, sysutils;


function formatNumber(num: real): string;
begin
    formatNumber := FormatFloat('0.00', num);
end;

var
    a, b: integer;
    resultado: real;
    opr: char;

begin
    Write('Ingrese el primer numero (a): ');
    ReadLn(a);
    Write('Ingrese el segundo numero (b): ');
    ReadLn(b);

    WriteLn('Ingrese la operacion a realizar (+, -, *, /): ');
    ReadLn(opr);

    case opr of
        '+': resultado := sumar(a, b);
        '-': resultado := restar(a, b);
        '*': resultado := multiplicar(a, b);
        '/': resultado := dividir(a, b);
    end;

    WriteLn('El resultado de la operación es: ', formatNumber(resultado));



end.