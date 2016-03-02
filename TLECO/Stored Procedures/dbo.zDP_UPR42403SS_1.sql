SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42403SS_1] (@Restriction_Code char(15), @DEPRTMNT char(7)) AS  set nocount on SELECT TOP 1  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE Restriction_Code = @Restriction_Code AND DEPRTMNT = @DEPRTMNT ORDER BY Restriction_Code ASC, DEPRTMNT DESC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42403SS_1] TO [DYNGRP]
GO
