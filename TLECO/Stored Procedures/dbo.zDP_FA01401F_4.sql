SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01401F_4] (@FA_AP_Post_Index_RS int, @FA_AP_Post_Index_RE int) AS  set nocount on IF @FA_AP_Post_Index_RS IS NULL BEGIN SELECT TOP 25  ASSETINDEX, PURCHLINESEQ, PURCHDESC, Acquisition_Cost, Orig_Acquisition_Cost, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, FA_AP_Post_Index, PORDNMBR, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01401 ORDER BY FA_AP_Post_Index ASC, DEX_ROW_ID ASC END ELSE IF @FA_AP_Post_Index_RS = @FA_AP_Post_Index_RE BEGIN SELECT TOP 25  ASSETINDEX, PURCHLINESEQ, PURCHDESC, Acquisition_Cost, Orig_Acquisition_Cost, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, FA_AP_Post_Index, PORDNMBR, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01401 WHERE FA_AP_Post_Index = @FA_AP_Post_Index_RS ORDER BY FA_AP_Post_Index ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ASSETINDEX, PURCHLINESEQ, PURCHDESC, Acquisition_Cost, Orig_Acquisition_Cost, VENDORID, DOCNUMBR, DOCDATE, TRXSORCE, ORCTRNUM, FA_AP_Post_Index, PORDNMBR, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA01401 WHERE FA_AP_Post_Index BETWEEN @FA_AP_Post_Index_RS AND @FA_AP_Post_Index_RE ORDER BY FA_AP_Post_Index ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01401F_4] TO [DYNGRP]
GO