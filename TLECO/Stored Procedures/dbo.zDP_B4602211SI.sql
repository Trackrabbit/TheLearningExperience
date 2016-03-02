SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602211SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @BSSI_Term char(25), @BSSI_Period_Begin datetime, @BSSI_Period_End datetime, @BSSI_Renewal_Type smallint, @BSSI_Lead_Time smallint, @BSSI_Notice_Requirements char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602211 (BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Term, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Requirements) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @BSSI_Term, @BSSI_Period_Begin, @BSSI_Period_End, @BSSI_Renewal_Type, @BSSI_Lead_Time, @BSSI_Notice_Requirements) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602211SI] TO [DYNGRP]
GO
