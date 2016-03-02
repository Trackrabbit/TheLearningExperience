SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00701F_2] (@ASSETINDEX_RS int, @RETIREMENTINDX_RS int, @ASSETINDEX_RE int, @RETIREMENTINDX_RE int) AS  set nocount on IF @ASSETINDEX_RS IS NULL BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 ORDER BY ASSETINDEX ASC, RETIREMENTINDX ASC END ELSE IF @ASSETINDEX_RS = @ASSETINDEX_RE BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 WHERE ASSETINDEX = @ASSETINDEX_RS AND RETIREMENTINDX BETWEEN @RETIREMENTINDX_RS AND @RETIREMENTINDX_RE ORDER BY ASSETINDEX ASC, RETIREMENTINDX ASC END ELSE BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 WHERE ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND RETIREMENTINDX BETWEEN @RETIREMENTINDX_RS AND @RETIREMENTINDX_RE ORDER BY ASSETINDEX ASC, RETIREMENTINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00701F_2] TO [DYNGRP]
GO
