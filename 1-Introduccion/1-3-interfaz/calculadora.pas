unit calculadora;

interface

function sumar(a: integer; b: integer): integer;
function restar(a: integer; b: integer): integer;
function multiplicar(a: integer; b: integer): integer;
function dividir(a: integer; b: integer): real;


implementation

function sumar(a: integer; b: integer): integer;
begin
    sumar := a + b;
end;

function restar(a: integer; b: integer): integer;
begin
    restar := a - b;
end;

function multiplicar(a: integer; b: integer): integer;
begin
    multiplicar := a * b;
end;

function dividir(a: integer; b: integer): real;
begin
    dividir := a / b;
end;

end.