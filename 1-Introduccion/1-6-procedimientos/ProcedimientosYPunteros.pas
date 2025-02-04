program ProcedimientosYPunteros;

type
    PEntero = ^Integer;

procedure ModificarPunteros(var p1: PEntero; p2: PEntero);
var 
    p3: PEntero;

begin
    New(p3);         // Asigna memoria para p3
    p3^ := 10;       // Asigna el valor 10 a la dirección de p3
    p1 := p3;        // p1 ahora apunta a p3
    p2 := p3;        // p2 ahora también apunta a p3, pero no se modifica el valor de p2 en el programa principal
    Dispose(p3);     // Libera la memoria asignada a p3
end;

var
    num: Integer;
    p1, p2: PEntero;
begin
    num := 5;        // Inicializa num
    New(p1);         // Asigna memoria para p1
    New(p2);         // Asigna memoria para p2
    p1^ := num;       // Asigna el valor de a a la dirección de p1
    p2^ := num;       // Asigna el valor de b a la dirección de p2

    writeln('Antes de llamar al procedimiento:');
    writeln('p1^ = ', p1^); // Imprime el valor apuntado por p1
    writeln('p2^ = ', p2^); // Imprime el valor apuntado por p2

    ModificarPunteros(p1, p2); // Llama al procedimiento

    writeln('Después de llamar al procedimiento:');
    writeln('p1^ = ', p1^); // Imprime el nuevo valor apuntado por p1
    writeln('p2^ = ', p2^); // Imprime el valor sin haber cambiado, ya que p2 no es por referencia, sino por valor. Es decir, se crea una copia de p2 en el procedimiento.

    Dispose(p1); // Libera la memoria asignada a p1
    Dispose(p2); // Libera la memoria asignada a p2
end.