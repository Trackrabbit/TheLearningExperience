SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602210SS_1] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Period, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Deadline, BSSI_Actual_Notice_Date, BSSI_Sent_Notice, BSSI_Received_Notice, BSSI_Notice_Requirements, BSSI_Edited, NOTEINDX, DEX_ROW_ID FROM .B4602210 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Tenant_Lease_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602210SS_1] TO [DYNGRP]
GO
