SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AEU10130SS_2] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  MSEQUENCE_I, EMPID_I, MSTRING_I_1, MSTRING_I_2, MSTRING_I_3, MSTRING_I_4, MSTRING_I_5, MLINT_I_1, MLINT_I_2, MLINT_I_3, MLINT_I_4, MLINT_I_5, MDLR_I_1, MDLR_I_2, MDLR_I_3, MDLR_I_4, MDLR_I_5, MCHECK_I_1, MCHECK_I_2, MCHECK_I_3, MCHECK_I_4, MCHECK_I_5, MCHECK_I_6, MCHECK_I_7, MCHECK_I_8, MCHECK_I_9, MCHECK_I_10, MDATE1_I, MDATE2_I, MDATE3_I, MDATE4_I, MDATE5_I, MTIME_I_1, MTIME_I_2, MTIME_I_3, MTIME_I_4, MTIME_I_5, NOTESINDEX_I, DEX_ROW_ID FROM .AEU10130 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AEU10130SS_2] TO [DYNGRP]
GO
