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
       01 WSK-DATOS-TRAB OCCURS 5 TIMES.
          02 WKS-NOM-TRAB      PIC X(50).
          02 WKS-APE-PAT       PIC X(50).
          02 WKS-APE-MAT       PIC X(50).
          02 WKS-SALARIO       PIC S9(05)V9(02).
          02 WKS-ID-TRAB       PIC 9(2).

       77 WKS-FIN              PIC 9(01).
       77 WKS-SAL-FORMAT       PIC ZZZZ9.99.
       77 WKS-TEM              PIC 9(01).
       PROCEDURE DIVISION.
       0000-MAIN SECTION.
       0000-PRINCIPAL.
           DISPLAY "NOMINA TRABAJADOR".
           MOVE 1 TO WKS-FIN.
           PERFORM 00001-DATOS-TRAB UNTIL WKS-FIN > 5.
           MOVE 1 TO WKS-FIN.
           PERFORM 00002-CONSULTA-TRAB UNTIL WKS-FIN > 5.
           STOP "PRESIONE CUALQUIER TECLA PARA CONTINUAR..".
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
           ADD 1 TO WKS-FIN.

       00002-CONSULTA-TRAB.
           DISPLAY "ID-TRAB" WKS-ID-TRAB(WKS-FIN).
           DISPLAY "Nombre: " WKS-NOM-TRAB(WKS-FIN).
           DISPLAY "APELLIDOS: " WKS-APE-PAT(WKS-FIN)
                                 WKS-APE-MAT(WKS-FIN).
           MOVE WKS-SALARIO(WKS-FIN) TO WKS-SAL-FORMAT.
           DISPLAY "SALARIO: " WKS-SAL-FORMAT.
           ADD 1 TO WKS-FIN.
