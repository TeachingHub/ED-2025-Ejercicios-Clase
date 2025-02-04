// caja-negra.pas
program caja_negra;

uses
    operacion; // Incluye el módulo operacion

var
    a, b, resultado: integer;

begin
    // Solicitar al usuario que ingrese dos números
    Write('Ingrese el primer numero (a): ');
    ReadLn(a);
    Write('Ingrese el segundo numero (b): ');
    ReadLn(b);

    // Llamar a la función compute
    resultado := compute(a, b);

    // Mostrar el resultado
    WriteLn('El resultado de la operacion es: ', resultado);
end.