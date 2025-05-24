*&---------------------------------------------------------------------*
*& Report  ZPJLM_MVC_LAYOUT_ALV
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT  zpjlm_mvc_layout_alv.

INCLUDE zpjlm_mvc_layout_alv_top.

INCLUDE zpjlm_mvc_layout_alv_mdl.
INCLUDE zpjlm_mvc_layout_alv_view.
INCLUDE zpjlm_mvc_layout_alv_cntr.

DATA: o_control TYPE REF TO lcl_control.

INITIALIZATION.

  CREATE OBJECT: o_control.

AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_vari.
 o_control->m_selection_screen_o( ).

START-OF-SELECTION.
  o_control->m_start_of_selection( ).
  o_control->m_call_screen( ).

  INCLUDE zpjlm_mvc_layout_alv_f01.
