SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0300L_2] (@CMPANYID_RS smallint, @BSSI_Product_ID_RS smallint, @CMPANYID_RE smallint, @BSSI_Product_ID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 ORDER BY CMPANYID DESC, BSSI_Product_ID DESC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 WHERE CMPANYID = @CMPANYID_RS AND BSSI_Product_ID BETWEEN @BSSI_Product_ID_RS AND @BSSI_Product_ID_RE ORDER BY CMPANYID DESC, BSSI_Product_ID DESC END ELSE BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND BSSI_Product_ID BETWEEN @BSSI_Product_ID_RS AND @BSSI_Product_ID_RE ORDER BY CMPANYID DESC, BSSI_Product_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0300L_2] TO [DYNGRP]
GO
