CLASS z_cl_jpc_fechas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_jpc_fechas IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TYPES: BEGIN OF ty_dates,
             start_date TYPE datum,
             end_date   TYPE datum.
    TYPES: END OF ty_dates.

    DATA: tl_dates TYPE TABLE OF ty_dates.

    tl_dates = VALUE #( ( start_date = '20250101'
                          end_date   = '20251231'
                                        ) ).

    SELECT FROM @tl_dates AS lt_dates
           FIELDS start_date, end_date,
                  is_valid( start_date ) AS is_valid_date,  "-> 1
                  extract_year( start_date ) AS extract_year, "->2025
                  extract_month( start_date ) AS extract_month, "->01
                  extract_day( start_date ) AS extract_day,
                  dayname(  start_date ) AS day_namne,
                  monthname( start_date ) AS month_name,
                  weekday( start_date ) AS weekday,
                  days_between(  start_date,end_date ) AS day_between,
                  add_days(  start_date, 2 ) AS add_day,
                  add_months(  start_date, 4 ) AS add_month
                  INTO TABLE @DATA(lt_result).

    out->write( lt_result ).


  ENDMETHOD.
ENDCLASS.
