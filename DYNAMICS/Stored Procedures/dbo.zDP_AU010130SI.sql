SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AU010130SI] (@MSEQUENCE_I smallint, @APPLICANTNUMBER_I numeric(19,5), @MSTRING_I_1 char(31), @MSTRING_I_2 char(31), @MSTRING_I_3 char(31), @MSTRING_I_4 char(31), @MSTRING_I_5 char(31), @MLINT_I_1 int, @MLINT_I_2 int, @MLINT_I_3 int, @MLINT_I_4 int, @MLINT_I_5 int, @MDLR_I_1 numeric(19,5), @MDLR_I_2 numeric(19,5), @MDLR_I_3 numeric(19,5), @MDLR_I_4 numeric(19,5), @MDLR_I_5 numeric(19,5), @MCHECK_I_1 tinyint, @MCHECK_I_2 tinyint, @MCHECK_I_3 tinyint, @MCHECK_I_4 tinyint, @MCHECK_I_5 tinyint, @MCHECK_I_6 tinyint, @MCHECK_I_7 tinyint, @MCHECK_I_8 tinyint, @MCHECK_I_9 tinyint, @MCHECK_I_10 tinyint, @MDATE1_I datetime, @MDATE2_I datetime, @MDATE3_I datetime, @MDATE4_I datetime, @MDATE5_I datetime, @MTIME_I_1 char(5), @MTIME_I_2 char(5), @MTIME_I_3 char(5), @MTIME_I_4 char(5), @MTIME_I_5 char(5), @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AU010130 (MSEQUENCE_I, APPLICANTNUMBER_I, MSTRING_I_1, MSTRING_I_2, MSTRING_I_3, MSTRING_I_4, MSTRING_I_5, MLINT_I_1, MLINT_I_2, MLINT_I_3, MLINT_I_4, MLINT_I_5, MDLR_I_1, MDLR_I_2, MDLR_I_3, MDLR_I_4, MDLR_I_5, MCHECK_I_1, MCHECK_I_2, MCHECK_I_3, MCHECK_I_4, MCHECK_I_5, MCHECK_I_6, MCHECK_I_7, MCHECK_I_8, MCHECK_I_9, MCHECK_I_10, MDATE1_I, MDATE2_I, MDATE3_I, MDATE4_I, MDATE5_I, MTIME_I_1, MTIME_I_2, MTIME_I_3, MTIME_I_4, MTIME_I_5, NOTESINDEX_I) VALUES ( @MSEQUENCE_I, @APPLICANTNUMBER_I, @MSTRING_I_1, @MSTRING_I_2, @MSTRING_I_3, @MSTRING_I_4, @MSTRING_I_5, @MLINT_I_1, @MLINT_I_2, @MLINT_I_3, @MLINT_I_4, @MLINT_I_5, @MDLR_I_1, @MDLR_I_2, @MDLR_I_3, @MDLR_I_4, @MDLR_I_5, @MCHECK_I_1, @MCHECK_I_2, @MCHECK_I_3, @MCHECK_I_4, @MCHECK_I_5, @MCHECK_I_6, @MCHECK_I_7, @MCHECK_I_8, @MCHECK_I_9, @MCHECK_I_10, @MDATE1_I, @MDATE2_I, @MDATE3_I, @MDATE4_I, @MDATE5_I, @MTIME_I_1, @MTIME_I_2, @MTIME_I_3, @MTIME_I_4, @MTIME_I_5, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AU010130SI] TO [DYNGRP]
GO
