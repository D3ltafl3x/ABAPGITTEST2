*&---------------------------------------------------------------------*
*& Report ZAB_SCHULUNG_03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAB_SCHULUNG_03.

INCLUDE ZAB_SCHULUNG_03_TOP.

SELECT-OPTIONS: s_vbeln FOR likp-vbeln,
                s_erdat FOR likp-erdat.

PARAMETERS:     p_lfart type lfart,
                p_vkorg type vkorg.


START-OF-SELECTION.

PERFORM get_data.
*PERFORM convert_data.
PERFORM output_data.

INCLUDE zab_schulung_03_f01.
