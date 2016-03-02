SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00801SS_6] (@TRANSFEREVENT int, @TRANSFERSEQ smallint) AS  set nocount on SELECT TOP 1  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 WHERE TRANSFEREVENT = @TRANSFEREVENT AND TRANSFERSEQ = @TRANSFERSEQ ORDER BY TRANSFEREVENT ASC, TRANSFERSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00801SS_6] TO [DYNGRP]
GO
