CLASS z_cl_jpc_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_jpc_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  " Este método main sería como el START_OF_SELECTION.

  out->write( 'Hola Mundo Cloud' ).

  ENDMETHOD.
ENDCLASS.
