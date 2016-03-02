SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00800SS_4] (@TRANSFERDATE datetime, @ASSETID char(15), @TRANSFERINDX int) AS  set nocount on SELECT TOP 1  TRANSFERINDX, TRANSFEREVENT, ASSETINDEX, ASSETID, XFRDATESTAMP, XFRTIMESTAMP, TRANSFERSEQ, TRANSFERDATE, FROMASSETINDX, FROMASSETID, FROMSTRUC, FROMLOC, From_Physical_LocationID, From_Master_Asset_ID, FROMDEPREXPACCTINDX, FROMDEPRRESVACCTINDX, FROMPRYRDEPRACCTINDX, FROMASSETCOSTACCTINDX, FROMPROCEEDSACCTINDX, FROMRECGAINLOSSACCTINDX, FROMNONRECGAINLOSSACCTINDX, FROMCLEARACCTINDX, PARTIALQTY, PARTIALCOST, PARTIALPCT, TOASSETINDX, TOASSETID, TOSTRUC, TOLOC, To_Physical_Location_ID, To_Master_Asset_ID, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX, TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, RETIREEVENT, ALIAS, DSTCOMID, TOCLASSID, DEX_ROW_ID FROM .FA00800 WHERE TRANSFERDATE = @TRANSFERDATE AND ASSETID = @ASSETID AND TRANSFERINDX = @TRANSFERINDX ORDER BY TRANSFERDATE ASC, ASSETID ASC, TRANSFERINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00800SS_4] TO [DYNGRP]
GO
