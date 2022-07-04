.data 
bienvenida: .asciz "             ________________________________________________			   \n                                                               			   \n           |    _________________________________________     |			   \n           |   |                                         |    |			   \n           |   |  C:\> _                                  |    |			   \n           |   |                                         |    |			   \n           |   |      BIENVENIDO AL JUEGO DEL AHORCADO   |    |			   \n           |   |                                         |    |			   \n           |   |         ADIVINÁ LA PALABRA OCULTA       |    |			   \n           |   |                                         |    |			   \n           |   |              TENÉS 8 VIDAS              |    |			   \n           |   |                                         |    |			   \n           |   |          PARA COMENZAR PRESIONÁ         |    |			   \n           |   |         ____ ____ ____ ____ ____        |    |			   \n           |   |        ||E |||N |||T |||E |||R ||       |    |			   \n           |   |        ||__|||__|||__|||__|||__||       |    |			   \n           |   |        |/__||/__||/__||/__||/__||       |    |		       \n           |   |_________________________________________|    |            \n           |                                                  |            \n             _________________________________________________ 			   \n                   \___________________________________/                   \n                ___________________________________________                \n             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_             \n          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_		   \n       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_	   \n    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_	   \n _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_ \n:-------------------------------------------------------------------------:\n`---._.-------------------------------------------------------------._.---'"
bienvenidalong = .-bienvenida
mapa: .asciz "___________________________________________________|\n                                                   |\n     *** EL JUEGO DEL AHORCADO - ORGA 1 ***        |\n___________________________________________________|\n                                                   |\n                                                   |\n          +------------+                           |\n          |                                        |\n          |                                        |\n          |                                        |\n          |                                        |\n          |                                        |\n          |                                        |\n          |                                        |\n          |                                        |\n +-------------------------------------------+     |\n |                                           |     |\n |                                           |     |\n |               _ _ _ _ _ _ _ _             |     |\n +-------------------------------------------+     |\n___________________________________________________|\n                                                   |\n QUEDAN LETRAS POR ADIVINAR                        |\n ESTAS VIVO                                        |\n VIDA:8                                            |\n___________________________________________________|\n\n"
longitud = . - mapa
palabras: .asciz "telefono alemania birlador animales canonica folklore guaranis punzador singapur violacea zapatero expertos glaucoma farmacos halcones palmares"
palabra: .asciz "        "
longitudPal: .byte 0
mensaje: .asciz "Ingrese una letra:\n"
letraIngresada: .asciz " "
letrasAdivinadas: .byte 0
lose: .asciz "                                                                                ██                ██  \n                                                                              ████▄   ▄▄▄▄▄▄▄   ▄████ \n ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗        ▀▀█▄█████████▄█▀▀    \n██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗         █████████████      \n██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝         ██▀▀▀███▀▀▀██      \n██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗         ██   ███   ██      \n╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║         █████▀▄▀█████      \n ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝          ███████████       \n                                                                                ▄▄▄██  █▀█▀█  ██▄▄▄   \n                                                                                ▀▀██           ██▀▀   \n"
loselong = .-lose
winer: .asciz "                                                                ___________     \n                                                               '._==_==_=_.'	\n ██████╗  █████╗ ███╗   ██╗ █████╗ ███████╗████████╗███████╗   .-|:      |-.	\n██╔════╝ ██╔══██╗████╗  ██║██╔══██╗██╔════╝╚══██╔══╝██╔════╝  | (|:.     |) |   \n██║  ███╗███████║██╔██╗ ██║███████║███████╗   ██║   █████╗     '-|:.     |-'    \n██║   ██║██╔══██║██║╚██╗██║██╔══██║╚════██║   ██║   ██╔══╝        '::. .'       \n╚██████╔╝██║  ██║██║ ╚████║██║  ██║███████║   ██║   ███████╗        ) (         \n ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝      _.' '._       \n                                                                 `'''''''`      \n"
winerlong = .-winer
respuestaUser: .asciz "        "
porAdivinar: .asciz "  ----JUEGO FINALIZADO----   "
over: .asciz "COMO DIRIA MARIANO... ESTAS HUNDIDO "
gano: .asciz "FELICITACIONES GANASTE EL JUEGO DEL AHORCADO"

///////////////PREGUNTA-APROXIMATIVA//////////////////////
msjPregunta: .asciz " ___________.._______											\n| .__________))______|											\n| | / /      ||													\n| |/ /       ||			 									  	\n| | /        ||.-''.											\n| |/         |/ _  \\											\n| |          || `/,|	    ¡¡¡ESTAS POR QUEDAR AHORCADO!!!	    \n| |          (\\`_.'											\n| |         .-`--'.	      SI CONTESTAS CORRECTAMENTE			\n| |        /Y     Y\\\											\n| |       // |   | \\\\		LA  SIGUIENTE PREGUNTA			\n| |      //  |   |  \\\\										\n| |     ')   |   |   (`		 GANARÁS UNA VIDA EXTRA 			\n| |          ||-||												\n| |          || ||												\n| |          || ||												\n| |          || ||												\n| |         / | | \\											\n''''''''''|_`-' `-' |'''|										\n|'|'''''''\\ \\        |'|										\n| |        \\ \\       | |										\n: :         \\ \\      : : 									\n\n\n"
msjPreguntalong= .-msjPregunta
pregunta1: .asciz "¿Cuántos millones de bitcoins pueden existir?"
pregunta1long= .-pregunta1
pregunta2: .asciz "¿Cuántos miles de kilómetros mide la muralla china?"
pregunta2long= .-pregunta2
pregunta3: .asciz "¿Cuántos millones de toneladas de residuos alimenticios por año se generan en el mundo?"
pregunta3long= .-pregunta3
pregunta4: .asciz "¿Cuántos millones de habitantes tiene Chile? "
pregunta4long= .-pregunta4
pregunta5: .asciz "¿Cuántos millones de habitantes tiene Israel?"
pregunta5long= .-pregunta5
pregunta6: .asciz "¿Cuántos millones de habitantes tiene Emiratos Árabes? "
pregunta6long= .-pregunta6
pregunta7: .asciz "¿Cuántos billones de habitantes hay en la Tierra en 2022?"
pregunta7long= .-pregunta7
pregunta8: .asciz "¿Cuántos metros tiene de largo una cancha de futbol profesional? "
pregunta8long= .-pregunta8
pregunta9: .asciz " ¿Cuántos elementos hay en la tabla periódica? "
pregunta9long= .-pregunta9
pregunta10: .asciz "¿Cuántos años duró la guerra de los 100 años?"
pregunta10long= .-pregunta10
valorRespuesta: .word 0
banderaPregunta: .word 0
////////////////////DISPARO////////////////////////////////
mensajeCoordenadas: .asciz "\n\n            .-.____________________.-.  						\n     ___ _.' .-----.    _____________|======+----------------+	\n    /_._/   (      |   /_____________|      |  ORGANIZACIÓN  |	\n      /      `  _ ____/                     |       DEL      |	\n     |_      ./( ||                         |   COMPUTADOR   |    \n    .'  `-._/__`_                           |________________|	\n   .'        |'												\n  /        /	    NO TE QUEDAN VIDAS , PERO AUN PUEDES SALVARTE!!	\n /        |														\n|         '	   SI ACIERTAS LAS COORDENADAS (X,Y) DE LA CUERDA	\n|          |														\n `-._____.-'		     ¡¡GANARÁS EL JUEGO!!						\n\n\n"
mensajeCoordenadasLong= .-mensajeCoordenadas
mensajeFila: .asciz "Ingrese numero de FILA:\n"
mensajeFilaLong= .-mensajeFila
mensajeColumna: .asciz "Ingrese numero de COLUMNA:\n"
mensajeColumnaLong= .-mensajeColumna
fila: .asciz "  "
valorFila: .word 0
columna:.asciz "  " 
valorColumna: .word 0
banderaDisparo: .word 0
enter: .ascii "\n"
cls: .asciz "\x1b[H\x1b[2J" //una manera de borrar la pantalla usando ansi escape codes
lencls = .-cls
///////////////////////////////////random//////////////////

.bss
        t:      .zero           // syscall storage




	
//////////////////////////////////////////TEXT//////////////////////////////////////////////////////
.text
//------------------------------------------------------------------
//output r0 valor random

numeroRandom:
	.fnstart
	push {r1,r3,r6,r9,lr}
	
	ldr r9,=t
	mov r7, #78                     // <syscall name="gettimeofday" number="78"/>
	ldr r0,=t                       // pointer
	mov r1, #0                      // 
	svc #0
	ldr r0,[r9,#1]                  // microseconds in second element
	
	ror r3,r0,#28                   //rotacion del numero dado en r0
	mov r0,#0
	mov r6,#0
	and r0,r3,#0x000000f            //al numero dado y luego rotado, me quedo solo con el bit menos significativo
	
	pop {r1,r3,r6,r9,lr}
	bx lr
	.fnend
//------------------------------------------------------------------		
//Selecciona de aleatoriamente una palabra para adivinar
//Input: r0 numero random 
//Output: graba en memoria lo seleccionado utilizando la etiqueta palabra

seleccionarPalabra:

	.fnstart
	push {r0,r2,r4,r5,r6,r8,lr}
	
		mov r5,#9                      
		ldr r2,=palabras    
		mul r6, r0, r5                 // multiplica el numero random por 9 para saber la posicion de la palabra elegida en cadena
		ldr r8,=palabra				   
		
	armarpalabra:
		
		ldrb r4,[r2,r6]              
		
		cmp r4,#00 												
		beq salir
		
		cmp r4,#' '	                   // el espacio indica que finalizo la palabra
		beq salir   

		strb r4,[r8],#1				   //guarda las letras en puntero "palabra"
		add r6, r6,#1					// puntero++
		bal armarpalabra
	salir:
	pop {r0,r2,r4,r5,r6,r8,lr}
	bx lr
	.fnend

//----------------------------------------------------------
//limpia y dibuja en pantalla 
//Input: r1= puntero al string , r2=longitud de lo que queremos imprimir
//Output: graba en memoria lo seleccionado utilizando la etiqueta palabra

imprimirEnPantalla:
      .fnstart
	  push {r0,r1,r2,lr}

      bl clearScreen

      mov r7, #4 
      mov r0, #1      
      swi 0    

      pop {r0,r1,r2,lr}

      bx lr 
      .fnend
//----------------------------------------------------------
// limpia la pantalla

clearScreen:
      .fnstart
	  push {r0,r1,r2}
	  
      mov r0, #1
      ldr r1, =cls
      ldr r2, =lencls
      mov r7, #4
      swi #0

      pop {r0,r1,r2}
      bx lr 
      .fnend
	  
//----------------------------------------------------------
//dibuja en pantalla sin clear
//Input: r1= puntero al string , r2=longitud de lo que queremos imprimir
//Output: graba en memoria lo seleccionado utilizando la etiqueta palabra

imprimirWinLose:

      .fnstart
	  push {r0,r1,r2,lr}

      mov r7, #4 
      mov r0, #1      
      swi 0    

      pop {r0,r1,r2,lr}
	  bx lr 
      .fnend

//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para mostrar pantalla de juego

pantallaJuego:
		.fnstart
		push {r1,r2,lr}
		
		ldr r1, =mapa
        ldr r2, =longitud
		bl imprimirEnPantalla	

		pop {r1,r2,lr}
		bx lr
		.fnend 

//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para mostrar pantalla inicial 

pantallaIncial:
		.fnstart
		push {r1,r2,lr}
		
		ldr r1, =bienvenida
		ldr r2, =bienvenidalong
		bl imprimirEnPantalla

		pop {r1,r2,lr}
		bx lr
		.fnend 

//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para mostrar mensaje ganador 

pantallawin:
 
	.fnstart
	push {r1,r2,lr}
	
		ldr r1, =winer
		ldr r2, =winerlong
		bl imprimirWinLose

	pop {r1,r2,lr}
	bx lr
	.fnend 
//----------------------------------------------------------	
//Extrae de memoria los parametros necesarios para mostrar mensaje gameover 

pantallalose: 

	.fnstart
	push {r1,r2,lr}
	
			ldr r1, =lose
            ldr r2, =loselong
			bl imprimirWinLose

	pop {r1,r2,lr}
	bx lr
	.fnend 

//--------------------------------------------------------------
//dibuja en pantalla mensaje  
mostrarmensaje:
	.fnstart 
	push {r0,r1,r2}
	
	mov r7,#4
	mov r0,#1
	mov r2,#20
	ldr r1, =mensaje
	swi 0
	
	pop {r0,r1,r2}
	bx lr
	.fnend
//--------------------------------------------------------------
leerLetraIngresada:
	.fnstart
	push {r1,lr}
	
			ldr r1,=letraIngresada
			bl leerteclado

	pop {r1,lr}
	bx lr
	.fnend 

//-----------------------------------------------------------------
//extrae los caracteres que el usuario ingresa por teclado
//input r1= puntero a memoria donde guardar l
//Output: graba en memoria la cadena utilizando la etiqueta letraIngresada

leerteclado:
	.fnstart
    push {r0,r1,r2}
	
	mov r7, #3
	mov r0, #0
	mov r2,#4
	swi 0
	
	pop {r0,r1,r2}
	bx lr
	.fnend
//----------------------------------------------------------
//busca la letra ingresada en la palabra a adivinar.Si es correcta la coloca en el mapa, si es incorrecta le resta una vida.
//Output: actualiza vidas y letras acertadas en mapa. r5= indice de ubicacion de la letra en cadena

verificador: 

	.fnstart
	push {r0, r3,r8,lr}
	mov r8, #0					// r8 bandera para restarvida r8=0 si la letra es incorrecta r8=1 si la letra es correcta
	mov r5,#0    				//r5=indice donde aparece letraIngresada 
	ldr r3,=palabra           
	ldr r12, =letraIngresada   
	ldrb r12, [r12]            

	recorrerPalabra:
		add r5,#1		//indice ++
		ldrb r0 , [r3]    // traigo un caracter de palabra
		
		cmp r0, #00
		beq fincadena   

		cmp r0, r12
		beq letracorrecta
		
		add r3, #1		// si es incorrecta direccion++ 
		bal recorrerPalabra
	
	letracorrecta:
		bl remplazaGuion
		mov r8, #1			// modifica bandera restarvida 
		add r3, #1 			//direccion++
		bal  recorrerPalabra

	fincadena:
		cmp r8, #0				// verfica estado de bandera restarvida
		beq letraIncorrecta
		bal salirFuncion
	
	letraIncorrecta:
		
		bl restarVida
		bl dibujarCuerpo
		
	salirFuncion:	
		pop {r0, r3,r8, lr}
		bx lr

	.fnend

//----------------------------------------------------------
//reemplaza los guiones por la letra correcta.
//Input: r5= indice de ubicacion de la letra en palabra.
//Output: actualiza en memoria el mapa.

remplazaGuion: 

	.fnstart
	push {r2,r4,r5, r6, r7, r9, r10,r11, r12, lr}
	
	mov r7,#970   // Posicion de primer guion
	mov r10,#2    
	mov r6,r5     // r6= indice de la letra
				
	mul r6,r10		// indice de la letra por 2 -1 = a la posicion de guion que le corresponde
	add r6,r7	// suma la ubicacion en mapa del primer guion
	sub r6,#1	 

	ldr r9,=mapa
	ldrb r11, [r9,r6]		
	
	cmp r11, #'_'		//si no es un guion es porque ya fue ingresada esa letra y no debemos reemplazarlo nuevamente
	bne salirRemplazaGuion
	
	strb r12,[r9,r6]   // reemplaza en mapa el guion con la letra ingresada
	ldr r4, = letrasAdivinadas		
	ldrb r2, [r4]	
	add r2, #1		//incrementa el numero de letras acertadas en la etiqueta 
	strb r2, [r4]
	
	salirRemplazaGuion:
	
	pop {r2, r4,r5, r6, r7, r9, r10, r11, r12, lr}
    bx lr
	.fnend

//----------------------------------------------------------
// Dibuja el ahorcado a medida que el usuario va perdiendo las vidas.
//Output: actualiza en memoria el dibujo del ahorcado en mapa.

dibujarCuerpo:
	.fnstart
	push {r4,r5,lr}
	ldr r4,=mapa            
	ldrb r5 ,[r4,#1278]		// caracter correspondiente al numero de vidas

	cmp r5,#55
	beq horca
	
	cmp r5,#54
	beq cabeza
	
	cmp r5,#53
	beq brazo
	
	cmp r5,#52
	beq torax
	
	cmp r5,#51
	beq brazo2
	
	cmp r5,#50
	beq pelvis
	
	cmp r5,#49
	beq pierna
	
	cmp r5,#48
	beq pierna2

	horca:

		// dibuja horca
		mov r5, #124
		strb r5,[r4,#394]
		bal sali 
		
	cabeza:

		// dibuja cabeza
		mov r5, #79
		strb r5,[r4,#447]	
		bal sali
		
		
	brazo:
		
		// dibuja brazo
		mov r5, #47
		strb r5,[r4,#499]	
		bal sali
		
	torax:
		// dibuja torax
		mov r5, #124
		strb r5,[r4,#500]	
		bal sali
		
	brazo2:
		
		// dibuja otro brazo
		mov r5, #92
		strb r5,[r4,#501]	
		bal sali

	pelvis:
		
		// dibuja pelvis
		mov r5, #124
		strb r5,[r4,#553]	
		bal sali
		
	pierna:

		// dibuja pierna
		mov r5, #47
		strb r5,[r4,#605]
		bal sali

	pierna2:
		
		// dibuja otra pierna
		mov r5, #92
		strb r5,[r4,#607]
		bal sali
		
	sali:	
		pop {r4,r5,lr}
		bx lr
		.fnend
//----------------------------------------------------------
//Resta una vida si la letra ingresada es incorrecta. Si le queda una sola vida lanza la preguntaAproximativa. 
//Output: actualiza la cantidad de vidas en mapa. Actualiza banderaPregunta.

restarVida:
	.fnstart
	push {r2,r4,r5,r10,lr}
	ldr r10,=banderaPregunta			
	ldr r2, [r10]      // r2= dato bandera
	ldr r4,=mapa           
	ldrb r5 ,[r4,#1278]		// r5= caracter correspondiente a la cantidad de vidas
	
	cmp r2,#1				//si ya realizo la pregunta con anterioridad la bandera estará en 1
	beq menos
	
	cmp r5 , #'1'			// si tiene una vida hace la preguntaAproximativa
	beq hacerPregunta
	
	menos:
	sub r5, #0x1		// le resta una vida
	strb r5, [r4,#1278]  
	bal finresta
	
	hacerPregunta:
		bl ultimaOportunidad				
		mov r2,#1 		 //actualiza bandera 
		str r2,[r10]
	
	finresta:
	pop {r2,r4,r5,r10,lr}
	bx lr
	.fnend
//----------------------------------------------------------
//reemplaza los guiones por arrobas al finalizar el juego.
//Output: actualiza en memoria el mapa con los arrobas.

arroba:
	.fnstart
	push {r3,r4,r5,lr}	
	
	ldr r4,=mapa            
	mov r3,#'@'
	
	cicloArroba:
		ldrb r5 ,[r4,#971]		// trae primer guion del mapa
		
		cmp r5,#'|'				// fin de rango determinado por el caracter del recuadro que contiene los guiones
		beq arrobaSalir
		
		cmp r5,#'_'
		beq reemplaza
		
		add r4,r4,#1		//indice ++
		bal cicloArroba
	
	reemplaza:
		strb r3,[r4,#971]
		add r4,r4,#1
		bal cicloArroba
		
	arrobaSalir:
	
	pop {r3,r4,r5,lr}
	bx lr
	.fnend
//----------------------------------------------------------
//recorre la palabra y  devuelve la cantidad de caracteres que la componen.
//Output: graba en memoria el valor utilizando la etiqueta longitudPal

longitudPalabra:

	.fnstart
	push {r3,r4,r5,lr}
	ldr r3,=palabra
	ldr r2,=longitudPal
	mov r5,#0		// contador longitud
	
	cuenta:
	
		ldrb r4,[r3]
		
		cmp r4,#0x00
		beq salida
		
		add r5,#1		//longitud++
		add r3,#1		// direccion++
		bal cuenta
	
	salida:
		strb r5,[r2]	
		
	pop {r3,r4,r5,lr}
	bx lr
	.fnend
//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para actualizar el estado del usuario en mapa.

estadoWin: 

//salida r6 dato para actualizar estado
		.fnstart
		push {r6,lr}
			ldr r6,=gano 	
			mov r12,#1220  	//ubicacion del estado en el mapa 
			bl actualizarEstado
		pop {r6,lr}
		bx lr
		.fnend
//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para actualizar el estado del usuario en mapa.

estadoLose:
		.fnstart
		push {r6,lr}
			ldr r6,=over	
			mov r12,#1220		//ubicacion del estado en el mapa 
			bl actualizarEstado
		pop {r6,lr}
		bx lr
		.fnend


//----------------------------------------------------------
//Extrae de memoria los parametros necesarios para actualizar el estado del usuario en mapa.

estadoLetrasPorAdivinar:
		.fnstart
		push {r6,r12,lr}
			ldr r6,=porAdivinar
			mov r12, #1167		//ubicacion del 'letras por adivinar' en el mapa 
			bl actualizarEstado
		pop {r6,r12,lr}
		bx lr
		.fnend
//----------------------------------------------------------
//Actualiza el estado del usuario en juego.
//Input: r6= etiqueta a direccion de memoria del estado actualizado r12= el offset necesario para llegar al dato en el  mapa.
//Output: actualiza en memoria el estado del usuario en mapa.

actualizarEstado:		
		.fnstart
			push {r4, r6, r8,r12,lr}
			ldr r4, =mapa 
			
		recorrer:
			ldrb r8, [r6]
			
			cmp r8 ,#00
			beq final  
			
			strb r8, [r4,r12]
			add r4, #1			//incrementa direccion de mapa
			add r6, #1			// incrementa direccion de cadena
			bal recorrer
			
		final:
			pop {r4,r6,r8,r12,lr}
			bx lr 
			.fnend
			

//---------------------------------------------------------- 
//realiza la pregunta aproximativa y evalua la respuesta del usuario
//Output: actualiza en memoria las vidas del usuario en mapa.

ultimaOportunidad:
	.fnstart
	push {r1,r2,lr}
	
	ldr r1, =msjPregunta
	ldr r2, =msjPreguntalong
	bl imprimirEnPantalla
	
	ciclopregunta:
		bl numeroRandom		// asegura que el random sea 1 a 10 	
		cmp r0, #10
		bgt ciclopregunta
	
	bl preguntaAprox
	bl leerrespuesta
	bl asciiADec
	bl evaluarRespuesta
	
	pop {r1,r2,lr}
	bx lr
	.fnend

//----------------------------------------------------------
//selecciona aleatoreamente una pregunta Aproximativa
//Input: r0= numero random 


preguntaAprox:
		.fnstart
		push {r0,r1,r2,lr}
		cmp r0,#1
		beq preguntar1
		cmp r0,#2
		beq preguntar2
		cmp r0,#3
		beq preguntar3
		cmp r0,#4
		beq preguntar4
		cmp r0,#5
		beq preguntar5
		cmp r0,#6
		beq preguntar6
		cmp r0,#7
		beq preguntar7
		cmp r0,#8
		beq preguntar8
		cmp r0,#9
		beq preguntar9
		cmp r0,#10
		beq preguntar10
		
		preguntar1: 
				ldr r1, =pregunta1
				ldr r2, =pregunta1long
				bal imprimirPregunta
		preguntar2:
				ldr r1, =pregunta2
				ldr r2, =pregunta2long
				bal imprimirPregunta
		preguntar3: 
				ldr r1, =pregunta3
				ldr r2, =pregunta3long
				bal imprimirPregunta
		preguntar4: 
				ldr r1, =pregunta4
				ldr r2, =pregunta4long
				bal imprimirPregunta
		preguntar5: 
				ldr r1, =pregunta5
				ldr r2, =pregunta5long	
				bal imprimirPregunta				
		preguntar6: 
				ldr r1, =pregunta6
				ldr r2, =pregunta6long
				bal imprimirPregunta	
		preguntar7: 
				ldr r1, =pregunta7
				ldr r2, =pregunta7long
				bal imprimirPregunta	
		preguntar8: 
				ldr r1, =pregunta8
				ldr r2, =pregunta8long
				bal imprimirPregunta
		preguntar9: 
				ldr r1, =pregunta9
				ldr r2, =pregunta9long
				bal imprimirPregunta	
		preguntar10: 
				ldr r1, =pregunta10
				ldr r2, =pregunta10long
				bal imprimirPregunta
				
	imprimirPregunta: 
		bl imprimirWinLose

		pop {r0,r1,r2,lr}
		bx lr
		.fnend 

//-----------------------------------------------------------------
//extrae la respuesta  que el usuario ingresa por teclado.
//Output: graba en memoria la cadena utilizando la etiqueta respuestaUser

leerrespuesta:
	.fnstart
    push {r0,r1,r2}
	
	mov r7, #3
	mov r0, #0
	mov r2,#10
	ldr r1,=respuestaUser
	swi 0
	
	pop {r0,r1,r2}
	bx lr
	.fnend
	

//------------------------------------------------------------------
// convierte ascci a decimal 
//Extrae de memoria los parametros necesarios para la conversion.
asciiADec:
	.fnstart
	push {r1,r8,lr}
	
	ldr r1, =respuestaUser
	ldr r8, =valorRespuesta
	bl convertAsciiADec
	
	pop {r1,r8,lr}
	bx lr
	.fnend
//------------------------------------------------------------------
// convierte ascii a decimal 
//input: r1= puntero a memoria ascii a convertir, r8= puntero a memoria donde guardar el valor decimal
//Output: graba en memoria el valor 

convertAsciiADec:
	.fnstart
	push {r1,r2,r5,r8,r10,lr}
	
		mov r10,#10
		mov r2, #0 
		
	otro:
		ldrb r5, [r1],#1
		cmp r5, #'\n'			
		beq finconvert
						
		cmp r5, #00			
		beq finconvert
		
		mul r2, r10 		//desplaza la cifra
		sub r5, #0x30		// produce equivalencia de ascci en decimal
		add r2, r5 			
		bal otro

	finconvert: 
		str r2,[r8]
		
	pop {r1,r2,r5,r8,r10, lr}
	bx lr 
	.fnend
	
//------------------------------------------------------------------
// Evalua si la respuesta del usuario se encuentra dentro del rango correcto.
//input: r0=numero random utilizado para seleccionar la pregunta
// output: actualiza en memoria las vidas del usuario en mapa.

evaluarRespuesta:

	.fnstart
	push {r0,r1,r2,r4,r5,lr}
	ldr r1, =valorRespuesta
	ldr r2, [r1]

	cmp r0,#4			
	ble rango18_22
	
	cmp r0,#7
	ble rango7_10
	
	cmp r0, #8
	bge rango114_122
	
	////////1-4/////////////	
rango18_22: 	
	cmp r2, #19
	bge esMenor
	bal respuestaIncorrecta
	
	esMenor:
	cmp r2, #22
	ble acerto
	//////////5-7////////////
rango7_10:
	cmp r2, #7
	bge esMenor1
	bal respuestaIncorrecta
	
	esMenor1:
	cmp r2, #10
	ble acerto
	
	//////////8-10////////////
rango114_122: 
	cmp r2, #114
	bge esMenor2
	bal respuestaIncorrecta
	
	esMenor2:
	cmp r2, #122
	ble acerto	
	
	respuestaIncorrecta:							// si la resta es incorrecta le resta una vida y sale de la fn
		ldr r4,=mapa            
		ldrb r5 ,[r4,#1278]		//caracter correspondiente a la cantidad de vidas
		sub r5, #0x1		
		strb r5, [r4,#1278]  

	acerto:					// si es correcta no hace nada vuelve al ciclo juego sin restar vida 		
		pop {r0,r1,r2,r4,r5,lr}
		bx lr
	.fnend
//------------------------------------------------------------------
//Llama a todas las subrutinas necesarias para poder mostrar al usuario la oportunidad de disparar y evaluar su respueta
disparo:
	.fnstart
	push {lr}
	
	bl msjDisparo
	bl ingreseFila
	bl leerFila
	bl asciiADecFila
	bl ingreseColumna
	bl leerColumna
	bl asciiADecColumna
	bl validarCoordenada
	
	pop {lr}
	bx lr
	.fnend
//------------------------------------------------------------------
//Extrae de memoria los parametros necesarios para imprimir en pantalla el mensaje de disparo.

msjDisparo: 
		.fnstart
		push {r1,r2,lr}
		
		ldr r1, =mensajeCoordenadas
		ldr r2, =mensajeCoordenadasLong
		bl imprimirEnPantalla

		pop {r1,r2,lr}
		bx lr
		.fnend 
//------------------------------------------------------------------		
//Extrae de memoria los parametros necesarios para imprimir en pantalla el mensaje de ingrese fila.

ingreseFila: 
		.fnstart
		push {r1,r2,lr}
		
		ldr r1, =mensajeFila
		ldr r2, =mensajeFilaLong
		bl imprimirWinLose

		pop {r1,r2,lr}
		bx lr
		.fnend 
//------------------------------------------------------------------
//Extrae de memoria los parametros necesarios para leer los caracteres que el usuario ingresa por teclado

leerFila:
	.fnstart
	push {r1,lr}
	
			ldr r1,=fila
			bl leerteclado

	pop {r1,lr}
	bx lr
	.fnend 
//------------------------------------------------------------------
// convierte ascci a decimal 
//Extrae de memoria los parametros necesarios para la conversion.

asciiADecFila:
	.fnstart
	push {r1,r8,lr}
	
	ldr r1,=fila
	ldr r8, =valorFila
	bl convertAsciiADec
	
	pop {r1,r8,lr}
	bx lr
	.fnend
	
//------------------------------------------------------------------
//Extrae de memoria los parametros necesarios para imprimir en pantalla el mensaje de ingrese fila.

ingreseColumna: 
		.fnstart
		push {r1,r2,lr}
		
		ldr r1, =mensajeColumna
		ldr r2, =mensajeColumnaLong
		bl imprimirWinLose

		pop {r1,r2,lr}
		bx lr
		.fnend 
//------------------------------------------------------------------				
//Extrae de memoria los parametros necesarios para leer los caracteres que el usuario ingresa por teclado
leerColumna:
	.fnstart
	push {r1,lr}
	
			ldr r1,=columna
			bl leerteclado

	pop {r1,lr}
	bx lr
	.fnend 
	

//------------------------------------------------------------------
// convierte ascci a decimal 
//Extrae de memoria los parametros necesarios para la conversion.

asciiADecColumna:	
	.fnstart
	push {r1,r8,lr}
	
	ldr r1,=columna
	ldr r8, =valorColumna
	bl convertAsciiADec
	
	pop {r1,r8,lr}
	bx lr
	.fnend

//------------------------------------------------------------------
//verifica que la coordenada ingresada por el usuario sea la correcta 

validarCoordenada:
	.fnstart
	push {r3,r4,r9,r10,lr}
	
		ldr r3, =valorFila
		ldr r3, [r3]
		ldr r4, =valorColumna
		ldr r4,[r4]
		
		cmp r3,#7				//comprar el valor ingresado por el usuario con el correcto
		beq compararCol
		bal exit
		
	compararCol:
		cmp r4,#23				//comprar el valor ingresado por el usuario con el correcto
		beq cortaHorca
		bal exit
		
	cortaHorca:
		ldr r10, =banderaDisparo			// si gana actualiza la banderaDisparo en 1
		mov r9, #1
		str r9,[r10]
	
	exit: 
		pop {r3,r4,r9,r10,lr}
		bx lr 
		.fnend
//////////////////////////////////////////////MAIN////////////////////////////////////////////////////////

.global main 


main:

	inicial:
		bl numeroRandom
		bl seleccionarPalabra
		ldr r1, =palabra
		bl pantallaIncial
		bl leerLetraIngresada
		ldr r3,=letraIngresada
		ldrb r3,[r3]
		
		cmp r3,#'\n'				// si el usuario apretó enter comienza el juego
		bne inicial
	
		bl pantallaJuego			
		bl longitudPalabra
		
		ldr r4,=mapa            
		ldr r9,=letrasAdivinadas
		ldr r0, =longitudPal
	
	cicloJuego: 
		
		ldrb r5,[r4,#1278]		// r5 <--caracter correspondiente a la cantidad de vidas
		ldrb r1,[r9]  			// r1 <--cantidad de letrasAdivinadas
		ldrb r10, [r0]			//r10 <-- longitudPalabra
		
		cmp r5 , #0x30 			// si tiene 0 vidas termina juego 
		beq gameover 
		
		
		cmp r1,r10				// si adivino todo termina el juego  
		beq ganaste
		
		bl mostrarmensaje
		bl leerLetraIngresada
		bl verificador
		bl pantallaJuego
		
		bal cicloJuego
			
		gameover:
			
			bl estadoLose
			bl estadoLetrasPorAdivinar
			bl arroba		
			bl pantallaJuego
			bl disparo
			
			ldr r12, =banderaDisparo			//si banderadisparo=1 respondio correctamente y gana
			ldr r12, [r12]
			
			cmp r12, #1
			beq ganaste
			
			bl pantallaJuego
			bl pantallalose
			bal fin
		
		ganaste:
			bl estadoWin
			bl estadoLetrasPorAdivinar
			bl pantallaJuego
			bl pantallawin
			bal fin		
		fin:
		mov r7, #1
		swi 0

