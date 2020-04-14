      ******************************************************************
      * Autho r:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UsoDeVaraibles.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-NOMBRE                   PIC A(30).
       01 WKS-REGISTRO-EMPLEADO.
           02 WKS-NOM-EMP.
               03 WKS-NOM-TRAB         PIC A(20) VALUES "DAVID".
               03 WKS-APEPA-TRAB       PIC A(20) VALUES "ARAGON".
               03 WKS-APEMA-TRAB       PIC A(20) VALUES "PENUELA".
           02 WKS-EDAD-EMP             PIC 9(02) VALUES 22.
           02 WKS-SALARIO              PIC 9(05)V9(2) VALUE 43554.12.
      *RENOMBRAR PALABRAS NIVEL 66
       66 WKS-APE-TRAB RENAMES WKS-APEPA-TRAB THRU WKS-APEMA-TRAB.
       01 WKS-BANDERA                  PIC 9(01).
           88 WKS-TRUE VALUE 1.
           88 WKS-FALSE VALUE 0.
       77 GASTOS                       pic 9(05)v99.
       77 WS-HORAS                     PIC 9(10).
       01 WKS-DIRECCION
                                   PIC X(30) VALUES "CLL 71 #56B-15".
       PROCEDURE DIVISION.
       00001-PRIMER-SECCION  SECTION.
       00001-MIPARRAFO.
           DISPLAY "BIENVENIDOS AL TERCER PROGRAMA".
           DISPLAY "PROGRAMA DE VARIABLES".
           ACCEPT WKS-NOMBRE.
           DISPLAY "HOLA ",WKS-NOMBRE.
           DISPLAY "REGISTRO EMPLEADO: ", WKS-REGISTRO-EMPLEADO.
           DISPLAY "EDAD: ",WKS-EDAD-EMP.
           DISPLAY "NOMBRE: ",WKS-NOM-EMP.
           DISPLAY "APELLIDOS: " WKS-APE-TRAB.
           DISPLAY "DIRECCION: " WKS-DIRECCION.
           DISPLAY "GASTOS: " GASTOS.
           DISPLAY "SALARIO" WKS-SALARIO.
           DISPLAY "BANDERA: " WKS-BANDERA.
           STOP "PAUSA".
       STOP RUN.
