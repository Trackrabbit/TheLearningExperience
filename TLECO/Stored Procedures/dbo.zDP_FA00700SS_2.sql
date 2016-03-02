SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00700SS_2] (@ASSETINDEX int, @RETIREMENTINDX int) AS  set nocount on SELECT TOP 1  RETIREMENTINDX, RETIRESEQ, RETIREEVENT, ASSETINDEX, ASSETID, RETDATESTAMP, RETTIMESTAMP, RETIREMENTTYPE, RETIREMENTDATE, RETIREMENTCODE, CASHPROCEEDS, Orig_Cash_Proceeds, NONCASHPROCEEDS, Orig_Non_Cash_Proceeds, EXPOFSALE, Orig_Expenses_of_Sale, PARTIALQTY, PARTIALCOST, PARTIALPCT, ASSETINDXAFTRET, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, EXCHDATE, TIME1, EXGTBLID, RATETPID, RTCLCMTD, DENXRATE, MCTRXSTT, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA00700 WHERE ASSETINDEX = @ASSETINDEX AND RETIREMENTINDX = @RETIREMENTINDX ORDER BY ASSETINDEX ASC, RETIREMENTINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00700SS_2] TO [DYNGRP]
GO
