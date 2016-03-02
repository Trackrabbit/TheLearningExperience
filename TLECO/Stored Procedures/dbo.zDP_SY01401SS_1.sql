SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01401SS_1] (@USERID char(15), @coDefaultType smallint) AS  set nocount on SELECT TOP 1  USERID, coDefaultType, USRDFSTR, DEX_ROW_ID FROM .SY01401 WHERE USERID = @USERID AND coDefaultType = @coDefaultType ORDER BY USERID ASC, coDefaultType ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01401SS_1] TO [DYNGRP]
GO
