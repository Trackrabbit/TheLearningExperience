SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42402SS_2] (@LOCATNID char(15), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE LOCATNID = @LOCATNID AND Restriction_Code = @Restriction_Code ORDER BY LOCATNID ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42402SS_2] TO [DYNGRP]
GO
