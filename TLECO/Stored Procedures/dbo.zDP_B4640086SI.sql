SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640086SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_LineSeqNumber numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @BSSI_Sales_Amount numeric(19,5), @SOPNUMBE char(21), @SOPTYPE smallint, @BSSI_AdjustedAmount numeric(19,5), @BSSI_Adjustment numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640086 (BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNITMSEQ, @LNSEQNBR, @BSSI_LineSeqNumber, @STRTDATE, @ENDDATE, @BSSI_Sales_Amount, @SOPNUMBE, @SOPTYPE, @BSSI_AdjustedAmount, @BSSI_Adjustment) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640086SI] TO [DYNGRP]
GO
