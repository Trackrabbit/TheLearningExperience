SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100910SS_1] (@BSSI_User_Def_Field char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE BSSI_User_Def_Field = @BSSI_User_Def_Field ORDER BY BSSI_User_Def_Field ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100910SS_1] TO [DYNGRP]
GO
