SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0501000SS_1] (@BSSI_Capital_Call_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Capital_Call_ID, LNITMSEQ, DSCRIPTN, VENDORID, MJW_Investment_Number, BSSI_InvestorInvestAmt, CURNCYID, ISOCURRC, CRNCYSYM, BSSI_Fund_Owner_ID, BSSI_Fund_Owner_Name, BSSI_Broker_ID, BSSI_Broker_Name, BSSI_Fund_Call_Amount, BSSI_Owner_Due_Date, BSSI_STR255_1, BSSI_STR255_2, BSSI_STR255_3, BSSI_STR255_4, BSSI_STR255_5, BSSI_STR255_6, BSSI_STR255_7, BSSI_STR255_8, BSSI_STR255_9, BSSI_STR255_10, BSSI_STR255_11, BSSI_STR255_12, BSSI_STR255_13, BSSI_STR255_14, BSSI_STR255_15, BSSI_Attachment_Path, DEX_ROW_ID FROM .B0501000 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0501000SS_1] TO [DYNGRP]
GO
