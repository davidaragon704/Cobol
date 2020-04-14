      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ARE-DE-TRABAJO.
           05 nombre     pic x(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingresa tu nombre"
            ACCEPT nombre
            DISPLAY "Bienvenido al mundo de cobol" nombre
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM PROGRAMA1.
