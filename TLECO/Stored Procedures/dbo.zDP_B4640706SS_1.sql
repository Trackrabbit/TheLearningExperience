SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640706SS_1] (@LOCNCODE char(11), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_EasementID, NOTEINDX, DEX_ROW_ID FROM .B4640706 WHERE LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ ORDER BY LOCNCODE ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640706SS_1] TO [DYNGRP]
GO
