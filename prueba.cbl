      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRUEBA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-OPTION-NUM           PIC 9(01).
       77 WKS-NUM-1                PIC 9(05)V9(03).
       77 WKS-NUM-2                PIC 9(05)V9(03).
       PROCEDURE DIVISION.
       00001-MI.SECCION SECTION.
       00001-MAIN.
           PERFORM 00000-CALCULADORA UNTIL WKS-NUM-1 <= 0.
       STOP RUN.
       00000-CALCULADORA.
           DISPLAY "Hello world"
           ACCEPT WKS-NUM-1.
           ACCEPT WKS-NUM-2.



           DISPLAY "SELECIONE 1. SUMA 2. RESTA. 3. MULTIPLICACION "
                  "4. division 5. modulo ".
