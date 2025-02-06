unit uPunto3D;

interface

uses
    Math;

type
    TPunto3D = record
        x, y, z: Real;
    end;

//function CrearPunto3D(x: Real; y: Real; z: Real): TPunto3D;
procedure InicializarPunto3D(var punto: TPunto3D; x: Real; y: Real; z: Real);
procedure SetX(var p: TPunto3D; x: Real);
procedure SetY(var p: TPunto3D; y: Real);
procedure SetZ(var p: TPunto3D; z: Real);
function GetX(p: TPunto3D): Real;
function GetY(p: TPunto3D): Real;
function GetZ(p: TPunto3D): Real;
function Modulo(p: TPunto3D): Real;
function Distancia(p1, p2: TPunto3D): Real;

implementation

// function CrearPunto3D(x: Real; y: Real; z: Real): TPunto3D;
// var 
//     punto: TPunto3D;
// begin
//     punto.x := x;
//     punto.y := y;
//     punto.z := z;
//     CrearPunto3D := punto;
// end;

procedure InicializarPunto3D(var punto: TPunto3D; x: Real; y: Real; z: Real);
begin
    punto.x := x;
    punto.y := y;
    punto.z := z;
end;

procedure SetX(var p: TPunto3D; x: Real);
begin
    p.x := x;
end;

procedure SetY(var p: TPunto3D; y: Real);
begin
    p.y := y;
end;

procedure SetZ(var p: TPunto3D; z: Real);
begin
    p.z := z;
end;

function GetX(p: TPunto3D): Real;
begin
    GetX := p.x;  // Use the function name to return the value
end;

function GetY(p: TPunto3D): Real;
begin
    GetY := p.y;  // Use the function name to return the value
end;

function GetZ(p: TPunto3D): Real;
begin
    GetZ := p.z;  // Use the function name to return the value
end;

function Modulo(p: TPunto3D): Real;
begin
    Modulo := Sqrt(Sqr(p.x) + Sqr(p.y) + Sqr(p.z));
end;

function Distancia(p1, p2: TPunto3D): Real;
begin
    Distancia := Sqrt(Sqr(p2.x - p1.x) + Sqr(p2.y - p1.y) + Sqr(p2.z - p1.z));
end;

end.