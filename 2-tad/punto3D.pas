program punto3D;

uses
    uPunto3D;

var
    punto1, punto2: TPunto3D;
    dist: Real;

begin
    // Crear dos puntos 3D
    InicializarPunto3D(punto1, 1.0, 2.0, 3.0);
    InicializarPunto3D(punto2, 4.0, 5.0, 6.0);

    // Mostrar coordenadas de los puntos
    Writeln('Punto 1: (', GetX(punto1):0:2, ', ', GetY(punto1):0:2, ', ', GetZ(punto1):0:2, ')');
    Writeln('Punto 2: (', GetX(punto2):0:2, ', ', GetY(punto2):0:2, ', ', GetZ(punto2):0:2, ')');

    // Calcular y mostrar la distancia entre los dos puntos
    dist :=  Distancia(punto1, punto2);
    Writeln('Distancia entre Punto 1 y Punto 2: ', dist:0:2);

    // Modificar las coordenadas del primer punto
    SetX(punto1, 7.0);
    SetY(punto1, 8.0);
    SetZ(punto1, 9.0);

    // Mostrar las nuevas coordenadas del primer punto
    Writeln('Nuevo Punto 1: (', GetX(punto1):0:2, ', ', GetY(punto1):0:2, ', ', GetZ(punto1):0:2, ')');

    // Calcular y mostrar el módulo del primer punto
    Writeln('Módulo del Nuevo Punto 1: ', Modulo(punto1):0:2);
end.