SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640007SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @Line_SEQ_Offset int, @YEAR1 smallint, @PERIODID smallint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_CorrectedAmount numeric(19,5), @DATE1 datetime, @BSSI_SalesNumberStatus smallint, @BSSI_Sales_Amount numeric(19,5), @SOPNUMBE char(21), @BSSI_ChargeLineSeq numeric(19,5), @BSSI_YearEndChargeLineSe numeric(19,5), @BSSI_ReversingChargeLine numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640007 (BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, Line_SEQ_Offset, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_CorrectedAmount, DATE1, BSSI_SalesNumberStatus, BSSI_Sales_Amount, SOPNUMBE, BSSI_ChargeLineSeq, BSSI_YearEndChargeLineSe, BSSI_ReversingChargeLine) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNSEQNBR, @Line_SEQ_Offset, @YEAR1, @PERIODID, @STRTDATE, @ENDDATE, @BSSI_CorrectedAmount, @DATE1, @BSSI_SalesNumberStatus, @BSSI_Sales_Amount, @SOPNUMBE, @BSSI_ChargeLineSeq, @BSSI_YearEndChargeLineSe, @BSSI_ReversingChargeLine) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640007SI] TO [DYNGRP]
GO
