UNIT uContadorLimitado;

INTERFACE

CONST 
    LIMITE = 50;

TYPE
    TContador = record
        valor: integer;
    end;
PROCEDURE inicializar(VAR e: TContador; valor_inicial : integer);
PROCEDURE inc(VAR c: TContador);
PROCEDURE dec(VAR c: TContador);
PROCEDURE reset(VAR c: TContador);
PROCEDURE Inc_valor(VAR c: TContador; n: Integer);
FUNCTION get_valor(e: TContador): integer;

IMPLEMENTATION

PROCEDURE inicializar(VAR e: TContador; valor_inicial : integer);
begin
    e.valor := valor_inicial;
end;

PROCEDURE inc(VAR c: TContador);
begin
    if c.valor < LIMITE then
        c.valor := c.valor + 1;
end;

PROCEDURE dec(VAR c: TContador);
begin
    if c.valor > 0 then
        c.valor := c.valor - 1;
end;

PROCEDURE reset(VAR c: TContador);
begin
    c.valor := 0;
end;

PROCEDURE Inc_valor(VAR c: TContador; n: Integer);
begin
    if c.valor + n <= LIMITE then
        c.valor := c.valor + n
    else
        c.valor := LIMITE;
end;

FUNCTION get_valor(e: TContador): integer;
begin
    get_valor := e.valor;
end;

END.