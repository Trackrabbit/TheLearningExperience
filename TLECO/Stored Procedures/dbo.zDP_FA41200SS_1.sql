SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41200SS_1] (@INSCLASSINDX int) AS  set nocount on SELECT TOP 1  INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41200 WHERE INSCLASSINDX = @INSCLASSINDX ORDER BY INSCLASSINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41200SS_1] TO [DYNGRP]
GO
