*&---------------------------------------------------------------------*
*&  Include           ZPJLM_MVC_LAYOUT_ALV_TOP
*&---------------------------------------------------------------------*
TABLES: spfli, disvariant.

SELECTION-SCREEN BEGIN OF BLOCK voo WITH FRAME TITLE text-001.
SELECT-OPTIONS: s_emp FOR spfli-carrid,
                s_num FOR spfli-connid.
SELECTION-SCREEN END OF BLOCK voo.

SELECTION-SCREEN BEGIN OF BLOCK var WITH FRAME TITLE text-002.
PARAMETERS: p_vari LIKE disvariant-variant.
SELECTION-SCREEN END OF BLOCK var.
