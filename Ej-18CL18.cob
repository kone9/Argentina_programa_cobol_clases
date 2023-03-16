       
      *> CLASE 18 Ejercicio ejercicio CLASE 18
      *> Ariel Gimenez

      *>   Se sabe que hay 7 días de la semana; de los cuales habitualmente 
      *>   resultan laborables de lunes a viernes durante 8 horas cada día.
      *>   Tomando como precondición esta premisa relatada como HABITUAL;
      *>   construir un diagrama de flujo que muestre el detalle de actividades
      *>   realizadas cada día laborable porcada sector de una empresa
      *>   financiera Los sectores son:
      *>  01 finanzas; 02 clientes; 03 inversiones; 04 préstamos; 05 informática
      
      *>   Las actividades generales se dividen según código de sector
      *>   de 01 a 05, a saber: 
      *>    01) Análisis (LUN; MIE; VIE); procedimientos (MAR, JUE)
      *>    02) Atención (LUN; MIE); actualización datos (MAR; JUE; VIE)
      *>    03) Administración (MAR; JUE); asesoramiento (LUN; MIE; VIE)
      *>    04) Promoción (VIE); otorgamiento (LUN; MAR; MIE; JUE)
      *>    05) Desarrollo (LUN; MAR; MIE; JUE; VIE) Producción 
      *>   (LUN; MAR; MIE; JUE; VIE)
      *>    Se deberá generar un listado con el detalle de todas las actividades
      *>    de cada sector por cada día de la semana.
      *>    Al finalizar, MOSTRAR EL TOTAL GENERAL de actividades por 
      *>   sector de la semana completa.

       
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL-18-EJ-17.

       DATA DIVISION.

      *>-----------------------------WORKING-STORAGE----------------------------
       WORKING-STORAGE SECTION.
       01 FILLER PIC X(10) VALUE "LUNES".
           
      *>   -------------------------------------------------------------
      


      *>---------------------------PROCEDURE----------------------------
       PROCEDURE DIVISION.


      *>   PARA QUE SE VEA BIEN AL INICIO
           DISPLAY "          "
           DISPLAY "---------------------------------------------------"
           DISPLAY "          "

      

       *>  TERMINA PROGRAMA
           STOP RUN.
       

