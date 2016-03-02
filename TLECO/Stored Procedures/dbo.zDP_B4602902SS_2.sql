SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602902SS_2] (@BSSI_Ground_Lease_Number char(25), @BSSI_Equipment_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Equipment_ID, NOTEINDX, DEX_ROW_ID FROM .B4602902 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Equipment_ID = @BSSI_Equipment_ID ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Equipment_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602902SS_2] TO [DYNGRP]
GO
