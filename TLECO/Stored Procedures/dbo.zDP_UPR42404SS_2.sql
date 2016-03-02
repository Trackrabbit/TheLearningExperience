SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42404SS_2] (@JOBTITLE char(7), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, JOBTITLE, DEX_ROW_ID FROM .UPR42404 WHERE JOBTITLE = @JOBTITLE AND Restriction_Code = @Restriction_Code ORDER BY JOBTITLE ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42404SS_2] TO [DYNGRP]
GO
