// operacion.pas
unit operacion;

interface

function compute(a: integer; b: integer): integer;

implementation

function compute(a: integer; b: integer): integer;
begin
    compute := 2 * a + 3 * b + 1;
end;

end.