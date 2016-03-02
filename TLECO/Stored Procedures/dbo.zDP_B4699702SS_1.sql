SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699702SS_1] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Index, BSSI_Asset_Suffix, NOTEINDX, DEX_ROW_ID FROM .B4699702 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699702SS_1] TO [DYNGRP]
GO
