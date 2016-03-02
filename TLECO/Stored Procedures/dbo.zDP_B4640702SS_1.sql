SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640702SS_1] (@LOCNCODE char(11), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Suffix, BSSI_Index, NOTEINDX, DEX_ROW_ID FROM .B4640702 WHERE LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ ORDER BY LOCNCODE ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640702SS_1] TO [DYNGRP]
GO