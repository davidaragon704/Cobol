      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTRADA-SALIDA.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-NOMBRE     PIC A(30).

       PROCEDURE DIVISION.
           DISPLAY "ingrese el nombre".
           DISPLAY "Captura tu nombre".
           ACCEPT WKS-NOMBRE.
           DISPLAY "Tu nombre es: ", WKS-NOMBRE
           STOP "PAUSA".

       STOP RUN.
