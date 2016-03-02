SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603101UN_4] (@BS int, @SLPRSNID char(15), @BSSI_Rev_Sharing_ID char(25), @SLPRSNID_RS char(15), @BSSI_Rev_Sharing_ID_RS char(25), @SLPRSNID_RE char(15), @BSSI_Rev_Sharing_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @SLPRSNID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE ( SLPRSNID = @SLPRSNID AND BSSI_Rev_Sharing_ID > @BSSI_Rev_Sharing_ID OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, BSSI_Rev_Sharing_ID ASC, DEX_ROW_ID ASC END ELSE IF @SLPRSNID_RS = @SLPRSNID_RE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE SLPRSNID = @SLPRSNID_RS AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND ( SLPRSNID = @SLPRSNID AND BSSI_Rev_Sharing_ID > @BSSI_Rev_Sharing_ID OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, BSSI_Rev_Sharing_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Rev_Sharing_ID, LNITMSEQ, SLPRSNID, VENDORID, SLSAMNT, PRCNTAGE, STRTDATE, ENDDATE, BSSI_Rev_Sharing_Limit_T, BSSI_Limit_Start_Date, BSSI_Limit_End_Date, BSSI_Limit_Start_Int, BSSI_Limit_End_Int, BSSI_Limit_Start_SalesAm, BSSI_Limit_End_SalesAmt, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, NOTEINDX, DEX_ROW_ID FROM .B4603101 WHERE SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND ( SLPRSNID = @SLPRSNID AND BSSI_Rev_Sharing_ID > @BSSI_Rev_Sharing_ID OR SLPRSNID > @SLPRSNID ) ORDER BY SLPRSNID ASC, BSSI_Rev_Sharing_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603101UN_4] TO [DYNGRP]
GO
