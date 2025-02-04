program procedimiento;

procedure ModificarPorValor(x: Integer);
begin
    x := x + 10;  // Modifica solo la copia local de x
end;

procedure ModificarPorReferencia(var y: Integer);
begin
    y := y + 10;  // Modifica la variable original
end;

var
    a, b: Integer;

begin
    a := 5;  // Inicializa a
    b := 5;  // Inicializa b

    writeln('Antes de llamar a los procedimientos:');
    writeln('a = ', a);  // Imprime 5
    writeln('b = ', b);  // Imprime 5

    ModificarPorValor(a);  // Llama al procedimiento que modifica por valor
    ModificarPorReferencia(b);  // Llama al procedimiento que modifica por referencia

    writeln('Después de llamar a los procedimientos:');
    writeln('a = ', a);  // Sigue siendo 5, ya que ModificarPorValor no afecta a a
    writeln('b = ', b);  // Ahora es 15, ya que ModificarPorReferencia modifica b
end.