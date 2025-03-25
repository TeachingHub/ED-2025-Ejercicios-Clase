program ejemplo_hashtable;

uses
    SysUtils, uHashTable;

var
    myHashTable: tHashTable;

begin
    WriteLn('--- Inicializando la Tabla Hash ---');
    initialize(myHashTable);
    show_table_state(myHashTable);
    WriteLn;

    WriteLn('--- Agregando elementos ---');
    WriteLn('Agregamos a la tabla la clave "manzana" con valor, ', hash_function('manzana'));
    add(myHashTable, 'manzana');
    WriteLn('Agregamos a la tabla la clave "banana" con valor, ', hash_function('banana'));
    add(myHashTable, 'banana');
    WriteLn('Agregamos a la tabla la clave "cereza" con valor, ', hash_function('cereza'));
    add(myHashTable, 'cereza');
    WriteLn('Agregamos a la tabla la clave "dátil" con valor, ', hash_function('dátil'));
    add(myHashTable, 'dátil');
    WriteLn('Agregamos a la tabla la clave "uva" con valor, ', hash_function('uva'));
    add(myHashTable, 'uva');
    WriteLn('Agregamos a la tabla la clave "fresa" con valor, ', hash_function('fresa'));
    add(myHashTable, 'fresa');
    WriteLn('Agregamos a la tabla la clave "kiwi" con valor, ', hash_function('kiwi'));
    add(myHashTable, 'kiwi');
    WriteLn('Agregamos a la tabla la clave "limon" con valor, ', hash_function('limon'));
    add(myHashTable, 'limon');
    WriteLn('Agregamos a la tabla la clave "mango" con valor, ', hash_function('mango'));
    add(myHashTable, 'mango');
    WriteLn('Agregamos a la tabla la clave "naranja" con valor, ', hash_function('naranja'));
    add(myHashTable, 'naranja');
    show_table_state(myHashTable);
    // Vamos a agregar una clave que colisione con otra (dependiendo de la función hash)
    // Por ejemplo, si HashTableSize es 10 y la suma de los ordinales de 'manzana' mod 10
    // es igual a la suma de los ordinales de otra palabra mod 10, habrá colisión.
    // Para simplificar, vamos a agregar una clave que probablemente colisione con 'manzana'
    // si la suma de sus caracteres mod 10 es la misma.
    add(myHashTable, 'anaznam'); // Intentionally similar to 'manzana' to potentially cause collision

    show_table_state(myHashTable);
    WriteLn;

    WriteLn('--- Verificando si existen elementos ---');
    if contains(myHashTable, 'banana') then
        WriteLn('La clave "banana" existe en la tabla.')
    else
        WriteLn('La clave "banana" no existe en la tabla.');

    if contains(myHashTable, 'sandia') then
        WriteLn('La clave "sandia" existe en la tabla.')
    else
        WriteLn('La clave "sandia" no existe en la tabla.');
    WriteLn;


    WriteLn('--- Eliminando elementos ---');
    remove(myHashTable, 'banana');
    remove(myHashTable, 'naranja');
    show_table_state(myHashTable);
    WriteLn;

    WriteLn('--- Verificando nuevamente si existen elementos ---');
    if contains(myHashTable, 'banana') then
        WriteLn('La clave "banana" existe en la tabla.')
    else
        WriteLn('La clave "banana" no existe en la tabla.');

    if contains(myHashTable, 'manzana') then
        WriteLn('La clave "manzana" existe en la tabla.')
    else
        WriteLn('La clave "manzana" no existe en la tabla.');
    WriteLn;

    ReadLn; // Para que la consola no se cierre inmediatamente
end.