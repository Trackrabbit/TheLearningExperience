SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699712SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @BSSI_AmountDue numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @DATE1 datetime, @BSSI_Description char(51), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4699712 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, LNITMSEQ, BSSI_AmountDue, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1, @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNSEQNBR, @LNITMSEQ, @BSSI_AmountDue, @BSSI_Sales_Amount, @DATE1, @BSSI_Description, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699712SI] TO [DYNGRP]
GO
