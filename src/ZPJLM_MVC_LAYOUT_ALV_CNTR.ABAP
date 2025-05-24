*&---------------------------------------------------------------------*
*&  Include           ZPJLM_MVC_LAYOUT_ALV_CNTR
*&---------------------------------------------------------------------*

CLASS lcl_control DEFINITION.

  PUBLIC SECTION.

    METHODS constructor.

    METHODS m_selection_screen_o.

    METHODS m_create_alv IMPORTING i_container TYPE c.

    METHODS m_call_screen.

    METHODS m_start_of_selection RETURNING value(r_view) TYPE REF TO lcl_view.

  PRIVATE SECTION.

    DATA o_view  TYPE REF TO lcl_view.
    DATA o_model TYPE REF TO lcl_model.

ENDCLASS.                    "lcl_control DEFINITION

*----------------------------------------------------------------------*
*       CLASS lcl_control IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_control IMPLEMENTATION.

  METHOD constructor.

    CREATE OBJECT o_view.
    CREATE OBJECT o_model.

  ENDMETHOD.                    "constructor

  METHOD m_start_of_selection.

    o_view->m_set_companhia( s_emp[] ).
    o_view->m_set_voo( s_num[] ).
    o_view->m_set_variante( p_vari ).
    o_view->m_set_model( o_model ).

    o_view->m_search_data( ).

    r_view = o_view.

  ENDMETHOD.                    "m_executar_relatorio


  METHOD m_selection_screen_o.

    DATA: wal_variant TYPE disvariant,
          vl_exit.

    wal_variant-report   = sy-repid.
    wal_variant-username = sy-uname.

    CALL FUNCTION 'REUSE_ALV_VARIANT_F4'
      EXPORTING
        is_variant = wal_variant
        i_save     = 'A'
      IMPORTING
        e_exit     = vl_exit
        es_variant = wal_variant
      EXCEPTIONS
        not_found  = 2.
    IF sy-subrc <> 2.
      IF vl_exit = space.
        p_vari = wal_variant-variant.
      ENDIF.
    ENDIF.
  ENDMETHOD.                    "m_selection_screen_o

  METHOD m_create_alv.

    o_view->m_build_alv( i_container ).

  ENDMETHOD.                    "m_create_alv

  METHOD m_call_screen.

    CALL SCREEN 9000.

  ENDMETHOD.                    "m_call_screen

ENDCLASS.                    "lcl_control IMPLEMENTATION
