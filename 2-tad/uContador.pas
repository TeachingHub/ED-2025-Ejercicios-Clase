UNIT uContador;

INTERFACE

TYPE
    TContador = RECORD
        valor: integer;
    END;

PROCEDURE inc(VAR c: TContador);
PROCEDURE dec(VAR c: TContador);
PROCEDURE reset(VAR c: TContador);
FUNCTION get_valor(c: TContador): integer;

IMPLEMENTATION

PROCEDURE inc(VAR c: TContador);
BEGIN
    c.valor := c.valor + 1;
END;

PROCEDURE dec(VAR c: TContador);
BEGIN
    if c.valor > 0 then
        c.valor := c.valor - 1;
END;

PROCEDURE reset(VAR c: TContador);
BEGIN
    c.valor := 0;
END;

FUNCTION get_valor(c: TContador): integer;
BEGIN
    get_valor := c.valor;
END;

END.