SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0300N_4] (@BS int, @INTERID char(5), @BSSI_Product_ID smallint, @INTERID_RS char(5), @BSSI_Product_ID_RS smallint, @INTERID_RE char(5), @BSSI_Product_ID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @INTERID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 WHERE ( INTERID = @INTERID AND BSSI_Product_ID > @BSSI_Product_ID OR INTERID > @INTERID ) ORDER BY INTERID ASC, BSSI_Product_ID ASC END ELSE IF @INTERID_RS = @INTERID_RE BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 WHERE INTERID = @INTERID_RS AND BSSI_Product_ID BETWEEN @BSSI_Product_ID_RS AND @BSSI_Product_ID_RE AND ( INTERID = @INTERID AND BSSI_Product_ID > @BSSI_Product_ID OR INTERID > @INTERID ) ORDER BY INTERID ASC, BSSI_Product_ID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, LNITMSEQ, CMPNYNAM, INTERID, BSSI_Product_ID, BSSI_LastBuildAttempted, DUMYRCRD, DEX_ROW_ID FROM .BSSI0300 WHERE INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND BSSI_Product_ID BETWEEN @BSSI_Product_ID_RS AND @BSSI_Product_ID_RE AND ( INTERID = @INTERID AND BSSI_Product_ID > @BSSI_Product_ID OR INTERID > @INTERID ) ORDER BY INTERID ASC, BSSI_Product_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0300N_4] TO [DYNGRP]
GO