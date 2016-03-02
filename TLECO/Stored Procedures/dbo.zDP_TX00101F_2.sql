SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00101F_2] (@TXSCHDSC_RS char(31), @TAXSCHID_RS char(15), @TXSCHDSC_RE char(31), @TAXSCHID_RE char(15)) AS  set nocount on IF @TXSCHDSC_RS IS NULL BEGIN SELECT TOP 25  TAXSCHID, TXSCHDSC, NOTEINDX, DEX_ROW_ID FROM .TX00101 ORDER BY TXSCHDSC ASC, TAXSCHID ASC, DEX_ROW_ID ASC END ELSE IF @TXSCHDSC_RS = @TXSCHDSC_RE BEGIN SELECT TOP 25  TAXSCHID, TXSCHDSC, NOTEINDX, DEX_ROW_ID FROM .TX00101 WHERE TXSCHDSC = @TXSCHDSC_RS AND TAXSCHID BETWEEN @TAXSCHID_RS AND @TAXSCHID_RE ORDER BY TXSCHDSC ASC, TAXSCHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TAXSCHID, TXSCHDSC, NOTEINDX, DEX_ROW_ID FROM .TX00101 WHERE TXSCHDSC BETWEEN @TXSCHDSC_RS AND @TXSCHDSC_RE AND TAXSCHID BETWEEN @TAXSCHID_RS AND @TAXSCHID_RE ORDER BY TXSCHDSC ASC, TAXSCHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00101F_2] TO [DYNGRP]
GO