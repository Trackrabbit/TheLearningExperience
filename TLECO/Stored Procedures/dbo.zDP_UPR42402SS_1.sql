SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42402SS_1] (@Restriction_Code char(15), @LOCATNID char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, LOCATNID, DEX_ROW_ID FROM .UPR42402 WHERE Restriction_Code = @Restriction_Code AND LOCATNID = @LOCATNID ORDER BY Restriction_Code ASC, LOCATNID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42402SS_1] TO [DYNGRP]
GO
