// Atividade 02
// Cauê

// 2 - Criar uma fila, onde deve ter as seguintes operações:
// Inserir, Remover, Consultar quem esta no final da fila, imprimir resultados.
// Validações: Avisar caso esteja cheia ou vazia.

const 
	size = 5;
	
type
	queues = array[1..size] of integer;

var
  counter, maxNumbers: integer; 
	queue: queues;

// Show first element in queue
procedure showOneElement(queue: queues; count: integer);
	begin
		clrscr;
		if (count < 1) then
			begin
				writeln ('A fila está vazia');
			end
		else
			begin
				writeln('O primeiro elemento da fila é: [', queue[1], ']');	
			end;
		readkey;
	end;

// Remove elements in queue
procedure removeQueue(var queue: queues; var counter: integer);
	var
		count: integer;

	begin
	  if counter < 1 then
	  	begin
	  		writeln('Fila está vazia!');
	  		readkey;
	  	end
	  else
	  	begin
				writeln('Removido o número [', queue[1], '] da fila.');
				for count:= 1 to counter - 1 do
					begin
						queue[count]:= queue[count + 1];
					end;
	  	end;
	  	
		
		counter:= counter - 1;
		readkey;
	end;
	
// Show elements in queue
procedure showQueue(queue: queues; size: integer);
	var
		count: integer;
	
	begin
		if size < 1 then
			begin
				writeln('A fila está vazia!');
			end
		else
			begin
				for count:= 1 to counter do 
					begin
						writeln('[', queue[count], ']');
					end;
			end;
		
		readkey;
	end;

// Insert in queue
procedure insertQueue(var queue: queues; var counter: integer; max: integer);
	var
		element, option: integer;

	begin
		if (counter < max) then
			begin
				repeat
					clrscr;
					writeln('***** Selecione uma opção *****'); 
					writeln('');
					writeln('[1] - Informar número para inserir na fila.');
					writeln('[0] - Retornar ao menu.');
					readln(element);
					
					case element of
						1:
							begin
								clrscr;
								counter:= counter + 1;
								
								writeln('Digite o número para inserir na fila');
								readln(queue[counter]);
							end;
					end;		
				until option = 0;
			end
		else 
			begin
				writeln('A fila está cheia');
				readkey;
			end;
	end;

// Get menu application
procedure getMenu();
	var
		option: integer;

	begin
		repeat
		  clrscr;
			writeln('------ FILA UNIDAVI BSN ------');
			writeln('');
			writeln('[1] - Inserir');
			writeln('[2] - Exibir fila');
			writeln('[3] - Sair da fila (Remover)');
			writeln('[4] - Mostrar primeiro elemento');
			writeln('[0] - Encerrar programa');
			writeln('');
			writeln('------------------------------');
			readln(option);
			clrscr;
		
			case option of	
				1: insertQueue(queue, counter, size);
				2: showQueue(queue, counter);
				3: removeQueue(queue, counter);
				4: showOneElement(queue, counter);
				0:
					begin
						clrscr;
						writeln('Volte sempre');
						readkey;
					end;
			end;
		until option = 0;
	end;

begin
	
	getMenu();
end.