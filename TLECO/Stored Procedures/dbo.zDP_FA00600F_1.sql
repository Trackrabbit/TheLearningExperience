SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00600F_1] (@ASSETINDEX_RS int, @ASSETINDEX_RE int) AS  set nocount on IF @ASSETINDEX_RS IS NULL BEGIN SELECT TOP 25  ASSETINDEX, INSCLASSINDX, INSURANCEYEAR, INSURANCEVALUE, REPLACEMENTCOST, REPROCOST, DEPRREPROCOST, EXCLUSIONAMT, EXCLUSIONTYPE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00600 ORDER BY ASSETINDEX ASC END ELSE IF @ASSETINDEX_RS = @ASSETINDEX_RE BEGIN SELECT TOP 25  ASSETINDEX, INSCLASSINDX, INSURANCEYEAR, INSURANCEVALUE, REPLACEMENTCOST, REPROCOST, DEPRREPROCOST, EXCLUSIONAMT, EXCLUSIONTYPE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00600 WHERE ASSETINDEX = @ASSETINDEX_RS ORDER BY ASSETINDEX ASC END ELSE BEGIN SELECT TOP 25  ASSETINDEX, INSCLASSINDX, INSURANCEYEAR, INSURANCEVALUE, REPLACEMENTCOST, REPROCOST, DEPRREPROCOST, EXCLUSIONAMT, EXCLUSIONTYPE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00600 WHERE ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE ORDER BY ASSETINDEX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00600F_1] TO [DYNGRP]
GO
