program example_cString;

uses
    uCString;

var
    str1, str2, str3: cString;

begin
    { Create cStrings with a capacity of 20 }
    CreateCString(str1, 20);
    CreateCString(str2, 20);
    CreateCString(str3, 20);

    { Set values for the cStrings }
    SetCStringValue(str1, 'Hello');
    SetCStringValue(str2, 'World');
    SetCStringValue(str3, 'This is a test');

        { Print the values }
    WriteLn('str1: ', GetCStringValue(str1));
    WriteLn('str2: ', GetCStringValue(str2));
    WriteLn('str3: ', GetCStringValue(str3));

    { Concatenate str2 to str1 }
    CStringCat(str1, str2);
    WriteLn('str1 after concatenation: ', GetCStringValue(str1));

    { Copy str1 to str3 }
    CStringCopy(str3, str1);
    WriteLn('str3 after copying str1: ', GetCStringValue(str3));

    { Convert str3 to uppercase }
    CStringToUpper(str3);
    WriteLn('str3 in uppercase: ', GetCStringValue(str3));

    { Print the values }
    WriteLn('str1: ', GetCStringValue(str1));
    WriteLn('str2: ', GetCStringValue(str2));
    WriteLn('str3: ', GetCStringValue(str3));

    { Compare str1 and str2 }
    WriteLn('Comparison of str1 and str2: ', CStringCompare(str1, str2));

    {Compare str1 and str3 }
    WriteLn('Comparison of str1 and str3: ', CStringCompare(str1, str3));

    { Convert str3 to lowercase }
    CStringToLower(str3);

    { Print the lowercase value of str3 }
    WriteLn('str3 in lowercase: ', GetCStringValue(str3));
end.