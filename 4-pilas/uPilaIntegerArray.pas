unit uPilaIntegerArray;

interface

const
    MAX_ELEMENTOS = 100;

type
    tPilaEnteros = record
        cima: integer;
        stack: array[1..MAX_ELEMENTOS] of integer;
    end;

{ Inicializa la pila }
procedure initialize(var p: tPilaEnteros);
{ Agrega un elemento a la pila }
procedure push(var p: tPilaEnteros; x: integer);
{ Elimina el elemento de la cima de la pila }
procedure pop(var p: tPilaEnteros);
{ Devuelve el elemento de la cima de la pila }
function peek(p: tPilaEnteros): integer;
{ Devuelve true si la pila está vacía }
function isEmpty(p: tPilaEnteros): boolean;

{ ----------------------------------------------------- }
{ ------------------ Funcionalidad extra -------------- }
{ ----------------------------------------------------- }
{ Devuelve true si la pila está llena }
function isFull(p: tPilaEnteros): boolean;
{ Libera los recursos de la pila }
procedure clear(var p: tPilaEnteros);
{ Imprime los elementos de la pila }
function toString(p: tPilaEnteros): string;


implementation

uses sysutils;

{ Inicializa la pila }
procedure initialize(var p: tPilaEnteros);
begin
    p.cima := 0;
end;

{ Devuelve true si la pila está vacía }
function isEmpty(p: tPilaEnteros): boolean;
begin
    isEmpty := p.cima = 0;
end;

{ Agrega un elemento a la pila }
procedure push(var p: tPilaEnteros; x: integer);
begin
    if p.cima < MAX_ELEMENTOS then
    begin
        p.cima := p.cima + 1;
        p.stack[p.cima] := x;
    end;
end;

{ Elimina el elemento de la cima de la pila }
procedure pop(var p: tPilaEnteros);
begin
    if not isEmpty(p) then
    begin
        p.cima := p.cima - 1;
    end;
end;

{ Devuelve el elemento de la cima de la pila }
function peek(p: tPilaEnteros): integer;
begin
    if not isEmpty(p) then
        peek := p.stack[p.cima];
end;

{ ----------------------------------------------------- }
{ ------------------ Funcionalidad extra -------------- }
{ ----------------------------------------------------- }

{ Devuelve true si la pila está llena }
function isFull(p: tPilaEnteros): boolean;
begin
    isFull := p.cima = MAX_ELEMENTOS;
end;

{ Libera los recursos de la pila }
procedure clear(var p: tPilaEnteros);
begin
    p.cima := 0; // Los elementos se sobreescribirán en futuras inserciones
end;

{ Imprime los elementos de la pila }
function toString(p: tPilaEnteros): string;
var
    i: integer;
    s: string;
begin
    s := '';
    for i := 0 to p.cima - 1 do
    begin
        s := s + IntToStr(p.stack[p.cima-i]) + ' ';
    end;
    toString := s;
end;

end.
