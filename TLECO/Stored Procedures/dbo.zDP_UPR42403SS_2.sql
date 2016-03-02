SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42403SS_2] (@DEPRTMNT char(7), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE DEPRTMNT = @DEPRTMNT AND Restriction_Code = @Restriction_Code ORDER BY DEPRTMNT ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42403SS_2] TO [DYNGRP]
GO
