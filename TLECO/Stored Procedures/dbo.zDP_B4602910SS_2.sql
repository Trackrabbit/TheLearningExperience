SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602910SS_2] (@BSSI_Ground_Lease_Number char(25), @BSSI_Period smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Period, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Deadline, BSSI_Actual_Notice_Date, BSSI_Sent_Notice, BSSI_Received_Notice, BSSI_Notice_Requirements, NOTEINDX, DEX_ROW_ID FROM .B4602910 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Period = @BSSI_Period ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Period ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602910SS_2] TO [DYNGRP]
GO
