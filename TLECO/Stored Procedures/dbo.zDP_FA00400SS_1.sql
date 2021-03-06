SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00400SS_1] (@ASSETINDEX int) AS  set nocount on SELECT TOP 1  ASSETINDEX, DEPREXPACCTINDX, DEPRRESVACCTINDX, PRIORYRDEPRACCTINDX, ASSETCOSTACCTINDX, PROCEEDSACCTINDX, RECGAINLOSSACCTINDX, NONRECGAINLOSSACCTINDX, CLEARINGACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00400 WHERE ASSETINDEX = @ASSETINDEX ORDER BY ASSETINDEX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00400SS_1] TO [DYNGRP]
GO
