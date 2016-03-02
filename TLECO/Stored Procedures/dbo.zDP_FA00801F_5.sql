SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00801F_5] (@ASSETINDEX_RS int, @TRANSFERINDX_RS int, @ASSETINDEX_RE int, @TRANSFERINDX_RE int) AS  set nocount on IF @ASSETINDEX_RS IS NULL BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 ORDER BY ASSETINDEX ASC, TRANSFERINDX ASC END ELSE IF @ASSETINDEX_RS = @ASSETINDEX_RE BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 WHERE ASSETINDEX = @ASSETINDEX_RS AND TRANSFERINDX BETWEEN @TRANSFERINDX_RS AND @TRANSFERINDX_RE ORDER BY ASSETINDEX ASC, TRANSFERINDX ASC END ELSE BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 WHERE ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND TRANSFERINDX BETWEEN @TRANSFERINDX_RS AND @TRANSFERINDX_RE ORDER BY ASSETINDEX ASC, TRANSFERINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00801F_5] TO [DYNGRP]
GO