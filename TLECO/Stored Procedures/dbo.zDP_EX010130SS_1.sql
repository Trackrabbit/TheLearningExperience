SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_EX010130SS_1] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, DATE1_I, DATE2_I, DATE3_I, DATE4_I, DATE5_I, STRINGS_I_1, STRINGS_I_2, STRINGS_I_3, STRINGS_I_4, STRINGS_I_5, NUMERICEXTRA_1, NUMERICEXTRA_2, NUMERICEXTRA_3, NUMERICEXTRA_4, NUMERICEXTRA_5, DOLLARS_I_1, DOLLARS_I_2, DOLLARS_I_3, DOLLARS_I_4, DOLLARS_I_5, CHECKBOXES_I_1, CHECKBOXES_I_2, CHECKBOXES_I_3, CHECKBOXES_I_4, CHECKBOXES_I_5, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .EX010130 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EX010130SS_1] TO [DYNGRP]
GO
