SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602911SS_2] (@BSSI_Ground_Lease_Number char(25), @BSSI_Period_Begin datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Term, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Requirements, DEX_ROW_ID FROM .B4602911 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Period_Begin = @BSSI_Period_Begin ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Period_Begin ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602911SS_2] TO [DYNGRP]
GO
