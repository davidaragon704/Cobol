      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT F-ARCHIVO ASSIGN TO "DATOS.TXT".

       DATA DIVISION.
       FILE SECTION.
       FD F-ARCHIVO.
       01 REG-CLIENTE.
           02 RC-NOMBRE                    PIC A(50).
           02 RC-APELLIDOS                 PIC A(50).
           02 RC-DOMICILIO                 PIC X(50).
           02 RC-TELEFONO                  PIC 9(10).

       WORKING-STORAGE SECTION.
       01 WKS-CLIENTE.
           02 WKS-NOMBRE-C                    PIC A(100).
           02 WKS-DOMICILIO                   PIC X(50).
           02 WKS-TELEFONO                    PIC 9(10).
           02 WKS-PASATIEMPO                  PIC X(30).
           02 WKS-COLOR                       PIC X(30).

       77 WKS-CONCATENADO                     PIC X(150).

       PROCEDURE DIVISION.
       SECTION-PRINCIPAL SECTION.

       MAIN-PROCEDURE.
           DISPLAY "PROGRAMA GENERADOR DE ARCHIVOS CLIENTES.".

           DISPLAY "INGRESE NOMBRE COMPLETO DEL CLIENTE".
           ACCEPT WKS-NOMBRE-C.

           DISPLAY "DAME DIRECCION DEL CLIENTE: ".
           ACCEPT WKS-DOMICILIO.

           DISPLAY "DAME TELEFONO DEL CLIENTE: ".
           ACCEPT WKS-TELEFONO.

           UNSTRING WKS-NOMBRE-C DELIMITED BY " "
               INTO RC-NOMBRE
                    RC-APELLIDOS.

           MOVE WKS-DOMICILIO TO RC-DOMICILIO.
           MOVE WKS-TELEFONO TO RC-TELEFONO.

           OPEN OUTPUT F-ARCHIVO.
           WRITE REG-CLIENTE.

           DISPLAY "DAME PASATIEMPO FAVORITO DEL CLIETE: ".
           ACCEPT  WKS-PASATIEMPO.
           DISPLAY "DAME COLOR FAVORITO DEL CLIENTE: ".
           ACCEPT WKS-COLOR.


           STRING "PASATIEMPO: ", WKS-PASATIEMPO
                   "COLOR: ",WKS-COLOR
                   DELIMITED BY SIZE
                   INTO WKS-CONCATENADO.
           MOVE LOW-VALUE TO REG-CLIENTE.

           WRITE REG-CLIENTE FROM WKS-CONCATENADO.

           CLOSE F-ARCHIVO.

           DISPLAY "TERMINO PROGRAMA".

       STOP RUN.
