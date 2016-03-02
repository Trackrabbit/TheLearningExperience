SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00801L_6] (@TRANSFEREVENT_RS int, @TRANSFERSEQ_RS smallint, @TRANSFEREVENT_RE int, @TRANSFERSEQ_RE smallint) AS  set nocount on IF @TRANSFEREVENT_RS IS NULL BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 ORDER BY TRANSFEREVENT DESC, TRANSFERSEQ DESC END ELSE IF @TRANSFEREVENT_RS = @TRANSFEREVENT_RE BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 WHERE TRANSFEREVENT = @TRANSFEREVENT_RS AND TRANSFERSEQ BETWEEN @TRANSFERSEQ_RS AND @TRANSFERSEQ_RE ORDER BY TRANSFEREVENT DESC, TRANSFERSEQ DESC END ELSE BEGIN SELECT TOP 25  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00801 WHERE TRANSFEREVENT BETWEEN @TRANSFEREVENT_RS AND @TRANSFEREVENT_RE AND TRANSFERSEQ BETWEEN @TRANSFERSEQ_RS AND @TRANSFERSEQ_RE ORDER BY TRANSFEREVENT DESC, TRANSFERSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00801L_6] TO [DYNGRP]
GO
