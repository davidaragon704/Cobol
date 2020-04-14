      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOMINA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WSK-DATOS-TRAB OCCURS 100 TIMES DEPENDING ON WKS-FIN.
          02 WKS-NOM-TRAB      PIC X(50).
          02 WKS-APE-PAT       PIC X(50).
          02 WKS-APE-MAT       PIC X(50).
          02 WKS-SALARIO       PIC S9(05)V9(02).
          02 WKS-ID-TRAB       PIC 9(2).

       77 WKS-FIN              PIC 9(03).
       77 WKS-SAL-FORMAT       PIC ZZZZ9.99.
       77 WKS-TEM              PIC 9(01).
       77 WKS-TERMINA          PIC 9(01).
       01 WKS-OPTION           PIC A(01) VALUE SPACE.
          88 WKS-OPC-ALTA      VALUE 'A'.
          88 WKS-OPC-CONS      VALUE 'C'.
          88 WKS-OPC-S         VALUE 'S'.
          88 WKS-OPC-NO        VALUE 'N'.

       PROCEDURE DIVISION.
       0000-MAIN SECTION.
       0000-PRINCIPAL.
           DISPLAY "NOMINA TRABAJADOR".
           MOVE ZERO TO WKS-TERMINA.
           MOVE 1 TO WKS-FIN
           IF WKS-FIN < 100

               PERFORM 00003-MENU UNTIL WKS-TERMINA IS EQUAL TO 1
           ELSE
               DISPLAY "SE EXCEDIO EL ESPACIO EN MEMORIA"
                      "HABLE CON TECNOLOGIA".
       00003-MENU.
           DISPLAY "A - ALTAS, C - CONSULTAS, S - SALIR".
           ACCEPT WKS-OPTION.
           IF WKS-OPC-ALTA

               PERFORM 00001-DATOS-TRAB UNTIL WKS-FIN > 5
           ELSE
           IF WKS-OPC-CONS
               MOVE 1 TO WKS-FIN
               PERFORM 00002-CONSULTA-TRAB UNTIL WKS-FIN > 5
               PERFORM 00003-MENU
           ELSE
           IF WKS-OPC-S
               MOVE 1 TO WKS-TERMINA
           ELSE
               DISPLAY "OPCION INVALIDA, VERIFIQUE"
               PERFORM 00003-MENU.

       STOP RUN.
       00001-DATOS-TRAB.

           DISPLAY "INGRESE NOMBRE DEL EMPLEADO".
           ACCEPT WKS-NOM-TRAB(WKS-FIN).

           DISPLAY "INGRESE PRIMER APELLIDO".
           ACCEPT WKS-APE-PAT(WKS-FIN).

           DISPLAY "INGRESE SEGUNDO APELLIDO".
           ACCEPT WKS-APE-MAT(WKS-FIN).

           DISPLAY "INGRESE SALARIO TRABAJADOR".
           ACCEPT WKS-SALARIO(WKS-FIN).

           ADD 10 TO WKS-TEM.
           MOVE WKS-TEM TO WKS-ID-TRAB(WKS-FIN).
           PERFORM 00004-OTRA-CAPTURA.

       00004-OTRA-CAPTURA.
           DISPLAY "DESEA CAPTURAR OTRO TRABAJADOR? S-SI, N-NO".
           ACCEPT WKS-OPTION.

           IF WKS-OPC-S
               ADD 1 TO WKS-FIN
               PERFORM 00001-DATOS-TRAB
           ELSE
           IF WKS-OPC-NO
               PERFORM 00003-MENU
           ELSE
               DISPLAY "OPCIÓN INVALIDA".
               PERFORM 00004-OTRA-CAPTURA.

       00002-CONSULTA-TRAB.
           DISPLAY "ID-TRAB" WKS-ID-TRAB(WKS-FIN).
           DISPLAY "Nombre: " WKS-NOM-TRAB(WKS-FIN).
           DISPLAY "APELLIDOS: " WKS-APE-PAT(WKS-FIN)
                                 WKS-APE-MAT(WKS-FIN).
           MOVE WKS-SALARIO(WKS-FIN) TO WKS-SAL-FORMAT.
           DISPLAY "SALARIO: " WKS-SAL-FORMAT.
           ADD 1 TO WKS-FIN.
