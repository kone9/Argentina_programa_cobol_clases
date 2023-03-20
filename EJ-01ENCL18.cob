      
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
      *> 01 WS-VARIABLE PIC X(10) VALUE "2023-02-20".
      *> AHORA CREAMOS UNA ESTRUCTURA, ANIDADA
      *> EL CONCEPTO SE LLAMA ESTRUCTURA O VARIBLES COMPUESTAS
       01  WS-VARIABLE.
           03 WS-AND PIC X(4).
      *>   Filler para separar
           03 FILLER PIC X(4) VALUE ".".
           03 WS-AND PIC X(2).
      *>   Filler para separar
           03 FILLER PIC X(4) VALUE ".".
           03 WS-AND PIC X(2).
      *>--------------------------------------

       PROCEDURE DIVISION.
      *>   todo lo que va en la procedura va a partir de la columna 12
           DISPLAY "usar columna 12".
           
           STOP RUN.