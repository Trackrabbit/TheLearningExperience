SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRCOM022N_1] (@BS int, @COMPANYCODE_I char(7), @COMPANYCODE_I_RS char(7), @COMPANYCODE_I_RE char(7)) AS  set nocount on IF @COMPANYCODE_I_RS IS NULL BEGIN SELECT TOP 25  COMPANYCODE_I, DATES_I_1, DATES_I_2, DATES_I_3, DATES_I_4, DATES_I_5, STRINGS_I_1, STRINGS_I_2, STRINGS_I_3, STRINGS_I_4, STRINGS_I_5, NUMERICEXTRA_1, NUMERICEXTRA_2, NUMERICEXTRA_3, NUMERICEXTRA_4, NUMERICEXTRA_5, DOLLARS_I_1, DOLLARS_I_2, DOLLARS_I_3, DOLLARS_I_4, DOLLARS_I_5, CHECKBOXES_I_1, CHECKBOXES_I_2, CHECKBOXES_I_3, CHECKBOXES_I_4, CHECKBOXES_I_5, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HRCOM022 WHERE ( COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC END ELSE IF @COMPANYCODE_I_RS = @COMPANYCODE_I_RE BEGIN SELECT TOP 25  COMPANYCODE_I, DATES_I_1, DATES_I_2, DATES_I_3, DATES_I_4, DATES_I_5, STRINGS_I_1, STRINGS_I_2, STRINGS_I_3, STRINGS_I_4, STRINGS_I_5, NUMERICEXTRA_1, NUMERICEXTRA_2, NUMERICEXTRA_3, NUMERICEXTRA_4, NUMERICEXTRA_5, DOLLARS_I_1, DOLLARS_I_2, DOLLARS_I_3, DOLLARS_I_4, DOLLARS_I_5, CHECKBOXES_I_1, CHECKBOXES_I_2, CHECKBOXES_I_3, CHECKBOXES_I_4, CHECKBOXES_I_5, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HRCOM022 WHERE COMPANYCODE_I = @COMPANYCODE_I_RS AND ( COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC END ELSE BEGIN SELECT TOP 25  COMPANYCODE_I, DATES_I_1, DATES_I_2, DATES_I_3, DATES_I_4, DATES_I_5, STRINGS_I_1, STRINGS_I_2, STRINGS_I_3, STRINGS_I_4, STRINGS_I_5, NUMERICEXTRA_1, NUMERICEXTRA_2, NUMERICEXTRA_3, NUMERICEXTRA_4, NUMERICEXTRA_5, DOLLARS_I_1, DOLLARS_I_2, DOLLARS_I_3, DOLLARS_I_4, DOLLARS_I_5, CHECKBOXES_I_1, CHECKBOXES_I_2, CHECKBOXES_I_3, CHECKBOXES_I_4, CHECKBOXES_I_5, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HRCOM022 WHERE COMPANYCODE_I BETWEEN @COMPANYCODE_I_RS AND @COMPANYCODE_I_RE AND ( COMPANYCODE_I > @COMPANYCODE_I ) ORDER BY COMPANYCODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRCOM022N_1] TO [DYNGRP]
GO
