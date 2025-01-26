CLASS z_cl_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data: it_art type STANDARD TABLE OF ztab_art.

        it_art = value #(
                 ( client = sy-mandt id_art = 1 descr = 'Mini colores' descr2 = 'Un mini estuche con mini colores.'
                   color = 'Varios' piezas = 12 stock = 10
                   url = 'https://static.bookscovers.es/imagenesP/8412027/841202700226.JPG')
                 ( client = sy-mandt id_art = 2 descr = 'Libreta' descr2 = 'Libreta 4º 30h 60gr pauta 3.5mm colores surtidos'
                   color = 'Azul' piezas = 2 stock = 20
                    url = 'https://static.bookscovers.es/imagenesP/8412855/841285530107.JPG')
                 ( client = sy-mandt id_art = 3 descr = 'Lapiz' descr2 = 'Lapiz fluorescente triangular rosa'
                   color = 'Rosa' piezas = 20 stock = 30
                    url = 'https://static.bookscovers.es/imagenesP/4007817/400781711005.JPG')
                 ( client = sy-mandt id_art = 4 descr = 'Rotulador' descr2 = 'Rotulador lumocolor 317 medio marron'
                   color = 'Marron' piezas = 100 stock = 15
                    url = 'https://static.bookscovers.es/imagenesP/4007817/400781733221.JPG')
                 ( client = sy-mandt id_art = 5 descr = 'Porta minas' descr2 = 'Portaminas pilot 05 h185 azul claro'
                   color = 'Azul' piezas = 15 stock = 200
                    url = 'https://static.bookscovers.es/imagenesP/4902505/490250515441.JPG')
                    ).

           MODIFY ztab_art from table @it_art.

           if sy-subrc eq 0.
            out->write( 'Registros insertados correctamente' ).
           else.
           out->write( 'Error al insertar los registros'  ).

           ENDIF.
  ENDMETHOD.
ENDCLASS.
