      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMERCIO.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
           SELECT F-ARCHIVO ASSIGN TO WKS-NOMBRE-ARCHIVO
                                   ORGANIZATION INDEXED
                                   ACCESS MODE DYNAMIC
                                   RECORD KEY IS RP-ID
                                   ALTERNATE RECORD KEY RP-NOMBRE
                                   FILE STATUS FS-STATUS.

           SELECT KEY-FILE ASSIGN TO "LLAVE.TXT"
                                   FILE STATUS KEY-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD F-ARCHIVO.

       01 REG-PRODUCTO.
           02 RP-ID                            PIC 9(10).
           02 RP-NOMBRE                        PIC X(50).
           02 RP-PRECIO                        PIC 9(05)V9(02).
           02 RP-CANTIDAD                      PIC 9(10).
           02 RP-DESCRIP                       PIC X(100).

       FD KEY-FILE.
       01 REG-LLAVE                            PIC 9(10).

       WORKING-STORAGE SECTION.

      * SECCION DE VARAIBLES AUXILIARES PARA ARCHIVOS
       01 WKS-NOMBRE-ARCHIVO.
           02 WKS-DIRECTORIO-INI  PIC X(19) VALUE "C:\Users\Home\Cobol".
           02 WKS-ID-ARCHIVO      PIC X(14) VALUE "DATOS-COMERCIO".
           02 WKS-FECHA-ARC       PIC 9(06) VALUE ZEROS.
           02 FILLER              PIC X(4) VALUE ".TXT".

       77 FS-STATUS               PIC 9(02).
       77 KEY-STATUS              PIC 9(02).
      *SECCION DE VARIABLES USO GENERAL

      *ACUMULADORES / CONTADORES

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "SHOPPING DAVID".
           STOP RUN.
