// Atividade 01
// Cauê

// 1 - Você precisa fazer uma pesquisa com N entrevistas nos municípios do alto vale do itajaí. 
// Cada entrevistado deverá fornecer três números entre 1 e 60. 
// O algoritmo deverá mostrar uma relação dos 10 números mais citados. 
// O algoritmo deve ainda, informar para cada municipio quais os três números mais citados.

const
	quantityCounties = 28;

type
	county = record
		name: string;
		totalInterviews: integer;
		indexInterview: integer;
		numbers: array[1..200] of integer;
	end;

var
	countyIndex: integer;
	counties: array[1..28] of county;
	
// Interviews
procedure interview();
	var
		counter: integer;
		optionCounty: integer;
	  counterCounty: integer;
		
	begin
		writeln('Escolha seu município para realizar a entrevista');
		for counter:= 1 to quantityCounties do
			begin
				writeln('[', counter, '] - ', counties[counter].name);
			end;
		readln(countyIndex);
		clrscr;
		writeln('O município escolhido foi: [', counties[countyIndex].name, ']');
		writeln('');
		writeln('');

		repeat
			writeln('------ ENTREVISTA ------');
			writeln('');
			writeln('[1] - Informar números');
			writeln('[0] - Voltar ao menu principal');
			writeln('');
			writeln('------------------------');
			readln(optionCounty);
			clrscr;
			
			case optionCounty of
				1:
					begin
					  // More one interview
						counties[countyIndex].totalInterviews := counties[countyIndex].totalInterviews + 1;
						
						// Get index interview
						if counties[countyIndex].indexInterview > 0 then
							begin
								counter:= counties[countyIndex].indexInterview;
							end
						else
							begin
								counter:= 1;
							end;
						
						// Set index "for"
						if counter = 1 then 	
							begin
								counterCounty:= counter + 2;
							end
						else
							begin
								counterCounty:= counter + 3;
							end;
						
						writeln('Informe três números');
						while (counter = counterCounty) do   
							begin
								readln(counties[countyIndex].numbers[counter]);
								
								counter:= counter + 1;
							end;
							
					  // Set index interview 
						counties[countyIndex].indexInterview:= counter;
					end;
			end;
		until optionCounty = 0;
		
	end;

// Get menu application
procedure getMenu();
	var
		option: integer;

	begin
		repeat
		  clrscr;
			writeln('----- ESCOLHA UMA OPÇÃO -----');
			writeln('');
			writeln('[1] - Realizar entrevista');
			writeln('[0] - Encerrar programa');
			writeln('');
			writeln('------------------------------');
			readln(option);
			clrscr;
		
			case option of	
				1: 
					begin
						interview();
					end;
				
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
	counties[1].name:=  'RSL'; counties[15].name:= 'PNE';
	counties[2].name:=  'AGR'; counties[16].name:= 'WIT';
	counties[3].name:=  'AGL'; counties[17].name:= 'VME';
	counties[4].name:=  'TCE'; counties[18].name:= 'JBO';
	counties[5].name:=  'BTR'; counties[19].name:= 'PGE';
	counties[6].name:=  'ATA'; counties[20].name:= 'ITU';
	counties[7].name:=  'LAU'; counties[21].name:= 'PET';	
	counties[8].name:=  'ROE'; counties[22].name:= 'IMB';
	counties[9].name:=  'MIR'; counties[23].name:= 'VID';
	counties[10].name:= 'TAI'; counties[24].name:= 'IBI';
	counties[11].name:= 'SAL'; counties[25].name:= 'CHA';
	counties[12].name:= 'RCA'; counties[26].name:= 'STE';	
	counties[13].name:= 'PRE'; counties[27].name:= 'AUR';
	counties[14].name:= 'LON'; counties[28].name:= 'DEM';
	
	getMenu();
end.