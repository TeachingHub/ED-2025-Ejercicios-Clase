unit uHashTable;

interface

uses
    SysUtils, uListaEnlazadaSimple;

const
    HashTableSize = 10;

type
    tHashTable = array[0..HashTableSize-1] of tListaSimple;

    procedure initialize(var table: tHashTable);
    procedure add(var table: tHashTable; key: string);
    procedure remove(var table: tHashTable; key: string);
    function contains(table: tHashTable; key: string): Boolean;
    procedure show_table_state(table: tHashTable);
    function hash_function(key: string): Integer;

implementation

function hash_function(key: string): Integer;
var
    i, hash: Integer;
begin
    hash := 0;
    for i := 1 to Length(key) do
        hash := (hash + Ord(key[i])) mod HashTableSize;
    hash_function := hash;
end;

procedure initialize(var table: tHashTable);
var
    i: Integer;
begin
    for i := 0 to HashTableSize - 1 do
        uListaEnlazadaSimple.initialize(table[i]);
end;

procedure add(var table: tHashTable; key: string);
var
    index: Integer;
begin
    index := hash_function(key);
    if not uListaEnlazadaSimple.in_list(table[index], key) then
    begin
        uListaEnlazadaSimple.insert_at_end(table[index], key);
    end;
end;

procedure remove(var table: tHashTable; key: string);
var
    index: Integer;
begin
    index := hash_function(key);
    uListaEnlazadaSimple.delete(table[index], key);
end;

function contains(table: tHashTable; key: string): Boolean;
var
    index: Integer;
begin
    index := hash_function(key);
    contains := uListaEnlazadaSimple.in_list(table[index], key);
end;

procedure show_table_state(table: tHashTable);
var
    i: Integer;
begin
    for i := 0 to HashTableSize - 1 do
    begin
        Write('Index ', i, ': ');
        WriteLn(uListaEnlazadaSimple.to_string(table[i]));
    end;
end;

end.