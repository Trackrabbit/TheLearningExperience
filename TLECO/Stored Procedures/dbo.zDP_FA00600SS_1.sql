SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00600SS_1] (@ASSETINDEX int) AS  set nocount on SELECT TOP 1  ASSETINDEX, INSCLASSINDX, INSURANCEYEAR, INSURANCEVALUE, REPLACEMENTCOST, REPROCOST, DEPRREPROCOST, EXCLUSIONAMT, EXCLUSIONTYPE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00600 WHERE ASSETINDEX = @ASSETINDEX ORDER BY ASSETINDEX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00600SS_1] TO [DYNGRP]
GO