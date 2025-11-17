function soma(a, b: Integer): Integer;
begin
	soma:= a + b;
end;

var
	resultado: Integer;
	a: Integer;
	b: Integer;
begin
	writeln('Soma de dois valores');
	write('Digite o valor de A: ');
	readln(a);

	write('Digite o valot de B: ');
	readln(b);

	resultado := soma(a, b);
	writeln('A soma final é: ', resultado);
end.
