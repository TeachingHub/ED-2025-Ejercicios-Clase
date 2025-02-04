program Punteros2Ej2;

uses
    SysUtils;

{ Declaración de constantes }
const
    MIN = 0;
    MAX = 2;

{ Declaración de tipos }
type
    { Aquí puedes declarar tus tipos personalizados }
    tparray = array[MIN..MAX] of ^Integer;

{ Declaración de variables }
var
    { Aquí puedes declarar tus variables }
    ptrArray: tparray;

{ Declaración de procedimientos y funciones }
procedure MiProcedimiento;
begin
    { Código del procedimiento }
end;

function MiFuncion: Integer;
begin
    { Código de la función }
    MiFuncion := 0;  { Valor de retorno de ejemplo }
end;

begin
    { Inicialización del programa }
    
    { Aquí va el código principal del programa }
    
    { Llamada a procedimientos y funciones }
    MiProcedimiento;
    Writeln(MiFuncion);
    
    { Finalización del programa }
    Readln;  { Pausa para ver la salida en la consola }
end.