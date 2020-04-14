      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALULADORA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-NUM-1                PIC S9(05)V9(02).
       77 WKS-NUM-2                PIC S9(05)V9(02).
       77 WKS-REST                 PIC S9(10)V9(02).
       77 WKS-OPCION               PIC A(01).
       77 WKS-ELECCION             PIC 9(01).
       77 WKS-RES-FORMAT           PIC -ZZZZZZZZZ9.99.
       77 WKS-RESIDUO              PIC 9(04).
       PROCEDURE DIVISION.
       00001-MI-SECCION SECTION.
       00001-MAIN.
           PERFORM 00000-CALCULADORA UNTIL WKS-ELECCION IS EQUAL 2 .
       STOP RUN.

       00000-CALCULADORA.
           DISPLAY "1-. USAR LA CALCULADORA, 2-. SALIR".
           ACCEPT WKS-ELECCION.

           IF WKS-ELECCION IS EQUAL TO 1 THEN
               PERFORM 00001-ciclo
               PERFORM 00002-EJECUTAR-OPERACION
           ELSE
               IF WKS-ELECCION IS EQUAL TO 2 THEN
               NEXT SENTENCE
           ELSE
               DISPLAY "INGRESO UN VALOR EQUIVOCADO".

       00001-ciclo.
           DISPLAY "CALCULADORA".
            DISPLAY "DAME EL NUMERO 1".
            ACCEPT WKS-NUM-1.
            DISPLAY "DAME EL NUMERO 2".
            ACCEPT WKS-NUM-2.

            DISPLAY "INDICA LA OPERACION A REALIZAR:".
            DISPLAY "S=SUMA,R=RESTA, M=MULTPLICACION,D=DIVISON,L=MODULO"
            "P= POTENCIA,Z=RAIZ CUADRADA ".
      *   NOT > (ES MENOR O IGUAL QUE)
      *   NOT < (ES MAYOR O IGUAL QUE)
            ACCEPT WKS-OPCION .

       00002-EJECUTAR-OPERACION.
           IF WKS-OPCION IS EQUAL TO "S" THEN
               ADD WKS-NUM-1 TO WKS-NUM-2 GIVING WKS-REST
            ELSE
            IF WKS-OPCION IS EQUAL TO "R" THEN
               SUBTRACT WKS-NUM-1 FROM WKS-NUM-2 GIVING WKS-REST
               DISPLAY WKS-REST
            ELSE
            IF WKS-OPCION IS EQUAL TO "M" THEN
               MULTIPLY WKS-NUM-1 BY WKS-NUM-2 GIVING WKS-REST
               DISPLAY WKS-REST
            ELSE
            IF WKS-OPCION IS EQUAL TO "D" OR "L" THEN
               DIVIDE WKS-NUM-1 INTO WKS-NUM-2 GIVING WKS-REST
               DISPLAY WKS-REST
            ELSE
            IF  WKS-OPCION IS EQUAL TO "P" THEN
                COMPUTE WKS-REST= WKS-NUM-1 ** WKS-NUM-2
            ELSE
            IF WKS-OPCION IS EQUAL TO "Z" THEN
                COMPUTE WKS-REST = WKS-NUM-1 ** (1/WKS-NUM-2)
            ELSE
               DISPLAY "NO SELECCIONO NADA".

            IF WKS-OPCION IS EQUAL "S" OR "R" OR "M" OR "D" THEN
               MOVE WKS-REST TO WKS-RES-FORMAT
               DISPLAY WKS-REST.

            STOP "Presione cualquiera tecla para continuar".
