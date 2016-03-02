SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42404SS_1] (@Restriction_Code char(15), @JOBTITLE char(7)) AS  set nocount on SELECT TOP 1  Restriction_Code, JOBTITLE, DEX_ROW_ID FROM .UPR42404 WHERE Restriction_Code = @Restriction_Code AND JOBTITLE = @JOBTITLE ORDER BY Restriction_Code ASC, JOBTITLE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42404SS_1] TO [DYNGRP]
GO
