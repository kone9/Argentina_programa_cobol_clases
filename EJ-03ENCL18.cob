      *> el comentario siempre empieza de la linea 7

      *>--------------------------------------
      *> IdentificarDatos
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJ-01ENCL18.
      *>--------------------------------------


      *>--------------------------------------
      *> es importante esto, porque sino mainframe cancela
      *> espera esta instrucción
      *> aca identifico archivos
      *> identifico el servidor
      *> el tipo de decimal 
       ENVIRONMENT DIVISION. 
      *>--------------------------------------


      *>--------------------------------------
       DATA DIVISION.
      *>     FILES SECTION.
      *>     INPUT OUTPUT SECTION.
      *>--------------------------------------
       

      *>--------------------------------------
       WORKING-STORAGE SECTION.
      *> DECLARANDO DIAS DE FORMA NORMAL
       
      *> DECLARANDO ARRAY SIN DEFINIR
      *> ES UNA ESTRUCTURA QUE DENTRO TIENE EL OCCURS
       *> COMO USAR REDEFINES DECLARAR DATOS DENTRO DE ARRAY
       01  DIASSEMANA.
           02 FILLER PIC X(10) VALUE "LUNES ".
           02 FILLER PIC X(10) VALUE "MARTES ".
           02 FILLER PIC X(10) VALUE "MIERCOLES ".
           02 FILLER PIC X(10) VALUE "JUEVES ".
           02 FILLER PIC X(10) VALUE "VIERNES ".
           02 FILLER PIC X(10) VALUE "SABADO ".
           02 FILLER PIC X(10) VALUE "DOMINGO ".
       01 TABLADEDIAS.
           02 ELDIA REDEFINES DIASSEMANA PIC X(10) OCCURS 7 TIMES. 

      *> INDICE TABLA
       77 DIA PIC 9(2).
      *>------------------------------------------------------------------------


      *> VALOR PARA LOS INDICES 
      *> DECLARANDO DIAS DE FORMA NORMAL
       01 LUNES PIC 9(4).
       01 MARTES PIC 9(4). 
       01 MIERCOLES PIC 9(4).
       01 JUEVES PIC 9(4).
       01 VIERNES PIC 9(4).
       01 SABADO PIC 9(4).
       01 DOMINGO PIC 9(4).
       
      *> DECLARANDO ARRAY SIN DEFINIR
      *> ES UNA ESTRUCTURA QUE DENTRO TIENE EL OCCURS
       01 DIASSEMANA.
           02 VISITAS PIC 9(4) OCCURS 7 TIMES. 
      
      *>--------------------------------------

       PROCEDURE DIVISION.

           MOVE 200 TO LUNES.
           MOVE 430 TO MARTES.
           MOVE 136 TO MIERCOLES.
           MOVE 525 TO JUEVES.
           MOVE 380 TO VIERNES.
           MOVE 1910 TO SABADO.
           MOVE 2300 TO DOMINGO.
       

      *> RECORRER EL BUCLE
           PERFORM VARYING DIA FROM 1 BY 1 UNTIL 7
               DISPLAY "CANTIDAD DE PERSONAS QUE VISITARON EL DIA" ELDIA(DIA).
               DISPLAY "ES DE VISITAS" VISITAS(DIA)
           END-PERFORM.

           STOP RUN.