*&---------------------------------------------------------------------*
*&  Include           ZPJLM_MVC_LAYOUT_ALV_F01
*&---------------------------------------------------------------------*
MODULE status_9000 OUTPUT.

  SET PF-STATUS 'ZSG9000'.
  SET TITLEBAR 'ZST9000'.

  o_control->m_create_alv( 'CONTAINER' ).

ENDMODULE.                 " STATUS_9000  OUTPUT
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_9000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_9000 INPUT.

  CASE sy-ucomm.
    WHEN 'BACK'.
      SET SCREEN 0.
    WHEN 'EXIT' OR 'CANCEL'.
      LEAVE PROGRAM.
    WHEN 'ATUALIZAR'.
      SET SCREEN 0.
    WHEN OTHERS.
  ENDCASE.
ENDMODULE.                    "user_command_9000 INPUT
