SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80200SS_1] (@USERID char(15), @CMPANYID smallint, @Extender_Type smallint, @Window_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  USERID, CMPANYID, Extender_Type, Extender_ID, Window_Number, Tag, DEX_ROW_ID FROM .EXT80200 WHERE USERID = @USERID AND CMPANYID = @CMPANYID AND Extender_Type = @Extender_Type AND Window_Number = @Window_Number ORDER BY USERID ASC, CMPANYID ASC, Extender_Type ASC, Window_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80200SS_1] TO [DYNGRP]
GO
