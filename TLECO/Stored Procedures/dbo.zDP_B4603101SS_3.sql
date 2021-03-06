SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603101SS_3] (@BSSI_Rev_Sharing_Limit_T smallint, @BSSI_Rev_Sharing_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE BSSI_Rev_Sharing_Limit_T = @BSSI_Rev_Sharing_Limit_T AND BSSI_Rev_Sharing_ID = @BSSI_Rev_Sharing_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Rev_Sharing_Limit_T ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603101SS_3] TO [DYNGRP]
GO
