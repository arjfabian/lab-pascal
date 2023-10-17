PROGRAM CalculoFactorial;

VAR
    N: INTEGER;

FUNCTION CalcularFactorial(N: INTEGER): INTEGER;
BEGIN
    IF N = 0 THEN
        CalcularFactorial := 1
    ELSE
        CalcularFactorial := N * CalcularFactorial(N - 1);
END;

FUNCTION LeerNumeroNoNegativo: INTEGER;
BEGIN
    REPEAT
	    WRITE('Ingrese un valor no negativo: ');
		READLN(N);
	UNTIL N >= 0;
	LeerNumeroNoNegativo := N;
END;

BEGIN
    N := LeerNumeroNoNegativo;
    WRITELN('El factorial de ', N, ' es ', CalcularFactorial(N));
    WRITE('Presione una tecla para salir.');
    READLN;
END.
