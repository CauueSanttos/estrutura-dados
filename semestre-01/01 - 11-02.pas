// Atividade 01
// Cauê

// 1 - Você precisa fazer uma pesquisa com N entrevistas nos municípios do alto vale do itajaí. 
// Cada entrevistado deverá fornecer três números entre 1 e 60. 
// O algoritmo deverá mostrar uma relação dos 10 números mais citados. 
// O algoritmo deve ainda, informar para cada municipio quais os três números mais citados.

const
	quantityCounties = 28;

var
	countyIndex: integer;
	counties: array[1..28] of string;
	
// Interviews
procedure interview();
	var
		counter: integer;
		
	begin
		writeln ('Escolha seu município para realizar a entrevista');
		for counter:= 1 to quantityCounties do
			begin
				writeln ('[', counter, '] - ', counties[counter]);
			end;
		readln(countyIndex);
		clrscr;
		writeln('O município escolhido foi: [', counties[countyIndex], ']');
		writeln('');
		writeln('');
		
	end;

// Get menu application
procedure getMenu();
	var
		option: integer;

	begin
		repeat
		  clrscr;
			writeln ('----- ESCOLHA UMA OPÇÃO -----');
			writeln ('');
			writeln ('[1] - Realizar entrevista');
			writeln ('[0] - Encerrar programa');
			writeln ('');
			writeln ('------------------------------');
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
	counties[1]:=  'RSL'; counties[15]:= 'PNE';
	counties[2]:=  'AGR'; counties[16]:= 'WIT';
	counties[3]:=  'AGL'; counties[17]:= 'VME';
	counties[4]:=  'TCE'; counties[18]:= 'JBO';
	counties[5]:=  'BTR'; counties[19]:= 'PGE';
	counties[6]:=  'ATA'; counties[20]:= 'ITU';
	counties[7]:=  'LAU';	counties[21]:= 'PET';	
	counties[8]:=  'ROE'; counties[22]:= 'IMB';
	counties[9]:=  'MIR'; counties[23]:= 'VID';
	counties[10]:= 'TAI'; counties[24]:= 'IBI';
	counties[11]:= 'SAL';	counties[25]:= 'CHA';
	counties[12]:= 'RCA'; counties[26]:= 'STE';	
	counties[13]:= 'PRE'; counties[27]:= 'AUR';
	counties[14]:= 'LON'; counties[28]:= 'DEM';
	
	getMenu();
	
end.