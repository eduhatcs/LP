function soma(a, b: Integer): Integer;
begin
	soma:= a + b;
end;

var
	resultado: Integer;
	a: Integer;
	b: Integer;
	i: Integer;
	
begin
	writeln('Bem vindo(a) ao programa de soma de dois valores!');
	writeln('[0] - Sair');
	writeln('[1] - Continuar');
	write('Insira sua opção: ');
	readln(i);
	
	while i <> 0 do
	begin
		write('Digite o valor de A: ');
		readln(a);

		write('Digite o valot de B: ');
		readln(b);

		resultado := soma(a, b);
		writeln('A soma final é: ', resultado);

		writeln();
		writeln('[0] - Sair');
		writeln('[1] - Continuar');
		write('Insira sua opção: ');
		readln(i);
	end;
end.
