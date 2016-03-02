SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640086UN_2] (@BS int, @SOPNUMBE char(21), @SOPTYPE smallint, @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE ( SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, DEX_ROW_ID ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640086UN_2] TO [DYNGRP]
GO
