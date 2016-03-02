SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50004F_3] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50004F_3] TO [DYNGRP]
GO