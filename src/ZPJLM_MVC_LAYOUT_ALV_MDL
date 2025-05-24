*&---------------------------------------------------------------------*
*&  Include           ZPJLM_MVC_LAYOUT_ALV_MDL
*&---------------------------------------------------------------------*

CLASS lcl_model DEFINITION.

  PUBLIC SECTION.

    DATA it_index TYPE lvc_t_row .

    METHODS m_executar
      RETURNING value(r_relatorio) TYPE spfli_tab.

    METHODS m_set_voo
      IMPORTING i_voo TYPE typ_r_connid.

    METHODS m_set_companhia
      IMPORTING i_companhia TYPE typ_r_carrid.

  PRIVATE SECTION.

    DATA r_companhia TYPE typ_r_carrid.
    DATA r_voo TYPE typ_r_connid.

    METHODS m_get_relatorio
      RETURNING value(r_relatorio) TYPE spfli_tab.

ENDCLASS.                    "lcl_control DEFINITION

*----------------------------------------------------------------------*
*       CLASS lcl_control IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS lcl_model IMPLEMENTATION.

  METHOD m_set_voo.

    r_voo = i_voo.

  ENDMETHOD.                    "m_set_voo

  METHOD m_set_companhia.

    r_companhia = i_companhia.

  ENDMETHOD.                    "m_set_companhia

  METHOD m_executar.

    r_relatorio = m_get_relatorio( ).

  ENDMETHOD.                    "m_executar

  METHOD m_get_relatorio.

    SELECT *
      FROM spfli
      INTO TABLE r_relatorio
          WHERE carrid IN r_companhia
          AND   connid IN r_voo.

    IF sy-subrc IS INITIAL.
      SORT r_relatorio BY carrid.
    ENDIF.

  ENDMETHOD.                    "m_get_relatorio

ENDCLASS.                    "lcl_model IMPLEMENTATION
