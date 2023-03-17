
      *> CLASE 18 Ejercicio ejercicio CLASE 18
      *> Ariel Gimenez

      *>  Construir un diagrama de flujo para describir la solución y mostrar 
      *> resultado de la siguiente problemática:
      *> - Como INPUT se recibe un monto determinado en millones 
      *> de pesos sin decimales.
      *> Distribuir dicho monto entre las siguientes variables; según el 
      *>  porcentaje de participaciónde cada una de ellas:
      *>     ▪ PARTICIPANTE 1 = 15,5%
      *>     ▪ PARTICIPANTE 2 = 10,5%
      *>     ▪ PARTICIPANTE 3 = 50%
      *>     ▪ PARTICIPANTE 4 = 14%
      *>     ▪ PARTICIPANTE 5 = 10%
      *> Al finalizar mostrar el importe de participación en $ de cada 
      *> participante; teniendo en cuenta los decimales.
      *> Cuando el importe a mostrar tenga “0” no significativos;
      *> reemplazarlos por “espacios”.
      *> Colocar el punto indicando los miles y la coma para 
      *> indicar los decimales.


      *> NOTA: NO ENCONTRE LA FORMA DE PONER LOS PUNTOS Y LOS DECIMALES


       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL-18-EJ-18.

       DATA DIVISION.


      *>-----------------------------WORKING-STORAGE----------------------------
       WORKING-STORAGE SECTION.
       01 MILLONES PIC 9(9)V9 VALUE 5250210.
       
      *> TABLA CON LOS VALORES CONSTANTES DE PORCENTAJE DE CADA PARTICIPANTE 
       01  MONTOS-PORCENTAJES.
           02 FILLER PIC 99V9 VALUE 15.5.
           02 FILLER PIC 99V9 VALUE 10.5.
           02 FILLER PIC 99V9 VALUE 50.0.
           02 FILLER PIC 99V9 VALUE 14.0.
           02 FILLER PIC 99V9 VALUE 10.0.
       01  TABLA-PORCENTAJES REDEFINES MONTOS-PORCENTAJES.
           02 PORCENTAJES PIC 99V9 OCCURS 5 TIMES.
      *>   -------------------------------------------------------------

      *> TABLA CON EL VALOR DE CADA UNO TOMANDO EN CUENTO EL MONTO MILLONES
       01  MONTOS-FINALES.
           02 FILLER PIC 9999999V9 VALUE 1.
           02 FILLER PIC 9999999V9 VALUE 1.
           02 FILLER PIC 9999999V9 VALUE 1.
           02 FILLER PIC 9999999V9 VALUE 1.
           02 FILLER PIC 9999999V9 VALUE 1.
       01  TABLA-MONTOS-FINALES REDEFINES MONTOS-FINALES.
           02 MONTOS PIC ZZZZZZZZZ OCCURS 5 TIMES.
      *>   -------------------------------------------------------------

      *>  CREO UN INDICE PARA RECORRER LOS BUCLES 
       01  i PIC 99.
       

      *>---------------------------PROCEDURE----------------------------
       PROCEDURE DIVISION.
      
      *>   DETALLE ESTETICO INICIAL
           DISPLAY "---------------------------------------------------"
           DISPLAY "          "
           
           DISPLAY "INGRESE EL MONTO"
           ACCEPT MILLONES
           DISPLAY "          "

      *>   RECORRE 5 VECES PARA REPRESENTAR LOS 5 PORCENTAJES
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
      
      *>   GUARDO EL MONTO SEGUN EL PORCENTAJE EN CADA RESULTADO 
                  COMPUTE MONTOS(i) = MILLONES * (PORCENTAJES(i) / 100)
      
      *>   MUESTRO RESULTADO, ME FALTO EL TEMA DE LOS PUNTOS 
      *>   Y LAS COMAS, ESPERO RESPUESTA DE ESO EN CLASE    
                  DISPLAY "$" MONTOS(I)
          
      *>   FIN BUCLE
           END-PERFORM

           
      *>   DETALLE ESTETICO FINAL
           DISPLAY "          "
           DISPLAY "---------------------------------------------------"

           DISPLAY "FIN DE PROGRAMA ARIEL GIMENEZ 16/03/2023"
           DISPLAY " "
           DISPLAY " "

       *>  TERMINA PROGRAMA
           STOP RUN.
       

