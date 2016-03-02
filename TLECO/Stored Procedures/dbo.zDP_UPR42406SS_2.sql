SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42406SS_2] (@EMPLOYID char(15), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, EMPLOYID, DEX_ROW_ID FROM .UPR42406 WHERE EMPLOYID = @EMPLOYID AND Restriction_Code = @Restriction_Code ORDER BY EMPLOYID ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42406SS_2] TO [DYNGRP]
GO
