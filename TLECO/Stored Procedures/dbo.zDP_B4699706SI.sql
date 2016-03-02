SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699706SI] (@SOPTYPE smallint, @SOPNUMBE char(21), @CMPNTSEQ int, @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_PortfolioID char(25), @BSSI_Tenant_Lease_Number char(25), @BSSI_LeaseTypeID char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_Sales_Amount numeric(19,5), @STRTDATE datetime, @ENDDATE datetime, @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B4699706 (SOPTYPE, SOPNUMBE, CMPNTSEQ, LNITMSEQ, LNSEQNBR, BSSI_PortfolioID, BSSI_Tenant_Lease_Number, BSSI_LeaseTypeID, LOCNCODE, BSSI_Charge_ID, BSSI_Sales_Amount, STRTDATE, ENDDATE, BSSI_Dummy) VALUES ( @SOPTYPE, @SOPNUMBE, @CMPNTSEQ, @LNITMSEQ, @LNSEQNBR, @BSSI_PortfolioID, @BSSI_Tenant_Lease_Number, @BSSI_LeaseTypeID, @LOCNCODE, @BSSI_Charge_ID, @BSSI_Sales_Amount, @STRTDATE, @ENDDATE, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699706SI] TO [DYNGRP]
GO
