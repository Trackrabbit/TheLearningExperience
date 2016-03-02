SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603101F_3] (@BSSI_Rev_Sharing_Limit_T_RS smallint, @BSSI_Rev_Sharing_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_Rev_Sharing_Limit_T_RE smallint, @BSSI_Rev_Sharing_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Rev_Sharing_Limit_T_RS IS NULL BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 ORDER BY BSSI_Rev_Sharing_Limit_T ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Rev_Sharing_Limit_T_RS = @BSSI_Rev_Sharing_Limit_T_RE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE BSSI_Rev_Sharing_Limit_T = @BSSI_Rev_Sharing_Limit_T_RS AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Rev_Sharing_Limit_T ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE BSSI_Rev_Sharing_Limit_T BETWEEN @BSSI_Rev_Sharing_Limit_T_RS AND @BSSI_Rev_Sharing_Limit_T_RE AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Rev_Sharing_Limit_T ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603101F_3] TO [DYNGRP]
GO
