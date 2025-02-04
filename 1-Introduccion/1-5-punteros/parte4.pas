program parte4;

type
    PInt = ^integer;
    PPInt = record
        pptr : PInt;
    end;

var
  x, y, z: integer;
  userAnswer: integer;
  ptr1, ptr2, ptr3: PInt;
  ptr4: ^PPInt;
  correctAnswers: integer;

begin
  correctAnswers := 0;
  x := 10;
  y := 20;
  z := 30;

  ptr1 := @x;
  ptr2 := @y;
  ptr3 := @z;

  New(ptr4);
  ptr4^.pptr := ptr2;

  // Pregunta 1
  writeln('1. ¿Cuál es el valor de ptr1^? ');
  readln(userAnswer);
  if userAnswer = ptr1^ then 
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else 
    writeln('Incorrecto. El valor correcto es: ', ptr1^);

  // Pregunta 2
  writeln('2. ¿Cuál será el valor de ptr2^? ');
  ptr2 := @z; 
  z := z + 1;
  readln(userAnswer);
  if userAnswer = ptr2^ then 
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else 
    writeln('Incorrecto. El valor correcto es: ', ptr2^);

  // Pregunta 3
  writeln('3. ¿Qué valor tiene ptr4^.pptr^? ');
  readln(userAnswer);
  if userAnswer = ptr4^.pptr^ then
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else 
    writeln('Incorrecto. El valor correcto es: ', ptr4^.pptr^);

  // Pregunta 4
  writeln('4. ¿Cuál es el valor de ptr3^? ');
  readln(userAnswer);
  if userAnswer = ptr3^ then
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else
    writeln('Incorrecto. El valor correcto es: ', ptr3^);

  x := 100;
  ptr1^ := x;
  ptr2 := ptr1; 
  ptr3 := ptr2;
  ptr3^ := 200;

  // Pregunta 5
  writeln('5. ¿Cuál es el valor de ptr1^? ');
  readln(userAnswer);
  if userAnswer = ptr1^ then
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else
    writeln('Incorrecto. El valor correcto es: ', ptr1^);

  // Pregunta 6
  writeln('6. ¿Cuál es el valor de ptr2^? ');
  readln(userAnswer);
  if userAnswer = ptr2^ then
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else
    writeln('Incorrecto. El valor correcto es: ', ptr2^);


    // Pregunta 7
    writeln('7. ¿Cuál es el valor de x? ');
    readln(userAnswer);
    if userAnswer = x then
    begin
        writeln('¡Correcto!');
        correctAnswers := correctAnswers + 1;
    end
    else
        writeln('Incorrecto. El valor correcto es: ', x);


    // Pregunta 8
    writeln('8. ¿Cuál es el valor de y? ');
    readln(userAnswer);
    if userAnswer = y then
    begin
        writeln('¡Correcto!');
        correctAnswers := correctAnswers + 1;
    end
    else
        writeln('Incorrecto. El valor correcto es: ', y);


    // Pregunta 9
    writeln('9. ¿Cuál es el valor de z? ');
    readln(userAnswer);

    if userAnswer = z then
    begin
        writeln('¡Correcto!');
        correctAnswers := correctAnswers + 1;
    end
    else
        writeln('Incorrecto. El valor correcto es: ', z);

    
    // Pregunta 10
  y := ptr2^ - ptr1^;
  writeln('10. ¿Qué valor tiene ptr4^.pptr^? ');

  readln(userAnswer);
  if userAnswer = ptr4^.pptr^ then
  begin
    writeln('¡Correcto!');
    correctAnswers := correctAnswers + 1;
  end
  else 
    writeln('Incorrecto. El valor correcto es: ', ptr4^.pptr^);


    writeln('Has respondido correctamente ', correctAnswers, ' preguntas de 10.');

    readln;

end.