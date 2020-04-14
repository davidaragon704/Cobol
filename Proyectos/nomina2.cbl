      ******************************************************************
      * Author: DAVID ARAGON PEÑUELA
      * Date: 12-04-2020
      * Purpose: APRENDIZAJE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WKS-INDEX                    PIC 9(3) VALUE ZERO.
       77 WKS-CONT                     PIC 9(02) VALUE ZERO.
       77 WKS-FIN                      PIC 9(02).
       77 WKS-DIAS                     PIC 9(02) VALUE ZERO.

       77 WKS-OPTION                   PIC 9(01).
           88 WKS-NOM                  VALUE 1.
           88 WKS-SAL                  VALUE 2.
           88 WKS-DISPLAY              VALUE 3.
           88 WKS-EXIT                 VALUE 4.

       77 WKS-SINO                     PIC 9(01).
           88 WKS-SI                   VALUE 1.
           88 WKS-NO                   VALUE 2.


       01 WKS-DATOS-EMPL OCCURS 100 DEPENDING WKS-INDEX.
           02 WKS-NAME                 PIC A(20).
           02 WKS-LAST-NAME            PIC A(20).
           02 WKS-SALARIO              PIC 9(10)V9(03).
           02 WKS-ID                   PIC 9(10) VALUE ZERO.
           02 WKS-MENSUALIDA           PIC 9(10) VALUE 0.

       PROCEDURE DIVISION.

       00000-MAIN SECTION.
           MOVE 1 TO WKS-INDEX.
           IF WKS-INDEX < 101 THEN
               DISPLAY WKS-FIN
               PERFORM 00001-MENU UNTIL WKS-FIN IS EQUAL TO 1
           ELSE
               DISPLAY "NO HAY MAS ESPACIO EN MEMORIA".
0      00001-MENU.
           DISPLAY "BIENVENIDOS AL INGRESO DE EMPLEADOS".
           DISPLAY "1.DATOS DE EMPLEADOS. 2.CALCULO SALARIO"
                   "3. MOSTRAR NOMINA 4.SALIR".
           DISPLAY "RECOMENDAMOS ENTRAR A LA OPCION 2 Y 3 CUANDO HAYA"
                   "INGRESADO TODOS LOS DATOS DE LOS EMPLEADOS"
           ACCEPT WKS-OPTION.

           IF WKS-NOM THEN
               MOVE 1 TO WKS-INDEX
               PERFORM 00002-DATOS-EMP

           ELSE
           IF WKS-SAL THEN
               DISPLAY "INDEX" WKS-INDEX
               PERFORM 00003-CALCULO-SALARIO
           ELSE
           IF WKS-DISPLAY THEN
               DISPLAY "CONTRUCCION"
           IF WKS-EXIT THEN
               DISPLAY "FIN " WKS-FIN
               MOVE 1 TO WKS-FIN
           ELSE
               DISPLAY "NO SELECCIONO NADA"
               PERFORM 00001-MENU.
       00001-MENU-2.
           DISPLAY "BIENVENIDO AL INGRESO DE LA NOMINA".
           ACCEPT WKS-OPTION.

           IF WKS-NOM THEN
               MOVE 1 TO WKS-INDEX
               DISPLAY "INDEX" WKS-INDEX
               PERFORM 00002-DATOS-EMP

           ELSE
           IF WKS-SAL THEN
               PERFORM 00003-CALCULO-SALARIO
           ELSE
           IF WKS-DISPLAY THEN
               DISPLAY "CONTRUCCION"
           IF WKS-EXIT THEN
               MOVE 1 TO WKS-FIN.

       00002-DATOS-EMP.
           DISPLAY "INDEX" WKS-INDEX
           DISPLAY "INGRESE NOMBRE DE EMPLEADO".
           ACCEPT WKS-NAME(WKS-INDEX).

           DISPLAY "INGRESE APELLIDO DEL EMPLEADO".
           ACCEPT WKS-LAST-NAME(WKS-INDEX).

           DISPLAY "INGRESE VALOR DE TRABAJO DIA"
           ACCEPT WKS-SALARIO(WKS-INDEX).

           MOVE 1 TO WKS-CONT.
           MOVE WKS-CONT TO WKS-ID(WKS-INDEX).
           PERFORM 00002-OTRA-CAPTURA.

       00002-OTRA-CAPTURA.
           DISPLAY "¿DESEA INGRESAR OTRO EMPLEADO?".
           ACCEPT WKS-SINO.

           IF WKS-SI THEN
               MOVE 1 TO WKS-INDEX
               PERFORM 00002-DATOS-EMP

           ELSE
           IF WKS-NO THEN
               PERFORM 00001-MENU
           ELSE
               DISPLAY "OPCION INVALIDA, INTENTE OTRA VEZ"
               PERFORM 00002-OTRA-CAPTURA.

       00003-CALCULO-SALARIO.
           MOVE 0 TO WKS-CONT.
           PERFORM 00003-CICLO VARYING WKS-CONT FROM 1 BY 1 UNTIL
           WKS-CONT = WKS-INDEX.


       00003-CICLO.
           DISPLAY "CALCULO NOMINA EMPLEADO"
           DISPLAY "ID " WKS-ID(WKS-CONT).
           DISPLAY "INGRESE DIAS LABORADOS POR EL TRABAJADOR".
           ACCEPT WKS-DIAS.
           MULTIPLY WKS-SALARIO(WKS-CONT) BY WKS-DIAS GIVING
           WKS-MENSUALIDA(WKS-CONT).

       00004-MOSTRAR.
           DISPLAY "NOMINA Y SALARIO A PAGAR O PAGADO ".
           MOVE 0 TO WKS-CONT.
           PERFORM 00004-CICLO VARYING WKS-CONT FROM 1 BY 1 UNTIL
           WKS-CONT > WKS-INDEX.

       00004-CICLO.
           DISPLAY "ID " WKS-ID(WKS-CONT).
           DISPLAY "SALARIO DIA " WKS-SALARIO(WKS-CONT).
           DISPLAY "MENSUALIDAD O QUINCENA".
           DISPLAY WKS-MENSUALIDA(WKS-CONT).
