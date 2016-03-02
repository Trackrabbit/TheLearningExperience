SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640028SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @BSSI_Sales_Amount numeric(19,5), @BSSI_SalesStartDate datetime, @BSSI_SalesEndDate datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640028 (BSSI_Tenant_Lease_Number, BSSI_Charge_ID, LOCNCODE, LNSEQNBR, LNITMSEQ, BSSI_Sales_Amount, BSSI_SalesStartDate, BSSI_SalesEndDate) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Charge_ID, @LOCNCODE, @LNSEQNBR, @LNITMSEQ, @BSSI_Sales_Amount, @BSSI_SalesStartDate, @BSSI_SalesEndDate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640028SI] TO [DYNGRP]
GO
