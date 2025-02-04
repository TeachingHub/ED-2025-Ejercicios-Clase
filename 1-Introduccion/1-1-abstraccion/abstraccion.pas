program abstraction;

uses sysutils;

type
cat = record
    name: string;
    age: integer;
    breed: string;
end;

var
myCat: cat;
yourCat: cat;

function catToString(cat: cat): string;
begin
    catToString := 'Name: ' + cat.name + ', Age: ' + IntToStr(cat.age) + ', Breed: ' + cat.breed;
end;

begin
myCat.name := 'Whiskers';
myCat.age := 3;
myCat.breed := 'Siamese';

writeln(catToString(myCat));

yourCat.name := 'Mittens';
yourCat.age := 5;
yourCat.breed := 'Tabby';

writeln(catToString(yourCat));
end.   