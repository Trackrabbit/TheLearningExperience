SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00701N_3] (@BS int, @ASSETINDXAFTRET int, @DEX_ROW_ID int, @ASSETINDXAFTRET_RS int, @ASSETINDXAFTRET_RE int) AS  set nocount on IF @ASSETINDXAFTRET_RS IS NULL BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 WHERE ( ASSETINDXAFTRET = @ASSETINDXAFTRET AND DEX_ROW_ID > @DEX_ROW_ID OR ASSETINDXAFTRET > @ASSETINDXAFTRET ) ORDER BY ASSETINDXAFTRET ASC, DEX_ROW_ID ASC END ELSE IF @ASSETINDXAFTRET_RS = @ASSETINDXAFTRET_RE BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 WHERE ASSETINDXAFTRET = @ASSETINDXAFTRET_RS AND ( ASSETINDXAFTRET = @ASSETINDXAFTRET AND DEX_ROW_ID > @DEX_ROW_ID OR ASSETINDXAFTRET > @ASSETINDXAFTRET ) ORDER BY ASSETINDXAFTRET ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00701 WHERE ASSETINDXAFTRET BETWEEN @ASSETINDXAFTRET_RS AND @ASSETINDXAFTRET_RE AND ( ASSETINDXAFTRET = @ASSETINDXAFTRET AND DEX_ROW_ID > @DEX_ROW_ID OR ASSETINDXAFTRET > @ASSETINDXAFTRET ) ORDER BY ASSETINDXAFTRET ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00701N_3] TO [DYNGRP]
GO
