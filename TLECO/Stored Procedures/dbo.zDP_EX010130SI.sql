SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_EX010130SI] (@EMPID_I char(15), @DATE1_I datetime, @DATE2_I datetime, @DATE3_I datetime, @DATE4_I datetime, @DATE5_I datetime, @STRINGS_I_1 char(31), @STRINGS_I_2 char(31), @STRINGS_I_3 char(31), @STRINGS_I_4 char(31), @STRINGS_I_5 char(31), @NUMERICEXTRA_1 int, @NUMERICEXTRA_2 int, @NUMERICEXTRA_3 int, @NUMERICEXTRA_4 int, @NUMERICEXTRA_5 int, @DOLLARS_I_1 numeric(19,5), @DOLLARS_I_2 numeric(19,5), @DOLLARS_I_3 numeric(19,5), @DOLLARS_I_4 numeric(19,5), @DOLLARS_I_5 numeric(19,5), @CHECKBOXES_I_1 tinyint, @CHECKBOXES_I_2 tinyint, @CHECKBOXES_I_3 tinyint, @CHECKBOXES_I_4 tinyint, @CHECKBOXES_I_5 tinyint, @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .EX010130 (EMPID_I, DATE1_I, DATE2_I, DATE3_I, DATE4_I, DATE5_I, STRINGS_I_1, STRINGS_I_2, STRINGS_I_3, STRINGS_I_4, STRINGS_I_5, NUMERICEXTRA_1, NUMERICEXTRA_2, NUMERICEXTRA_3, NUMERICEXTRA_4, NUMERICEXTRA_5, DOLLARS_I_1, DOLLARS_I_2, DOLLARS_I_3, DOLLARS_I_4, DOLLARS_I_5, CHECKBOXES_I_1, CHECKBOXES_I_2, CHECKBOXES_I_3, CHECKBOXES_I_4, CHECKBOXES_I_5, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I) VALUES ( @EMPID_I, @DATE1_I, @DATE2_I, @DATE3_I, @DATE4_I, @DATE5_I, @STRINGS_I_1, @STRINGS_I_2, @STRINGS_I_3, @STRINGS_I_4, @STRINGS_I_5, @NUMERICEXTRA_1, @NUMERICEXTRA_2, @NUMERICEXTRA_3, @NUMERICEXTRA_4, @NUMERICEXTRA_5, @DOLLARS_I_1, @DOLLARS_I_2, @DOLLARS_I_3, @DOLLARS_I_4, @DOLLARS_I_5, @CHECKBOXES_I_1, @CHECKBOXES_I_2, @CHECKBOXES_I_3, @CHECKBOXES_I_4, @CHECKBOXES_I_5, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_EX010130SI] TO [DYNGRP]
GO
