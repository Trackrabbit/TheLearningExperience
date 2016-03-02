SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41600N_1] (@BS int, @LEASECOMPINDX int, @LEASECOMPINDX_RS int, @LEASECOMPINDX_RE int) AS  set nocount on IF @LEASECOMPINDX_RS IS NULL BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE ( LEASECOMPINDX > @LEASECOMPINDX ) ORDER BY LEASECOMPINDX ASC END ELSE IF @LEASECOMPINDX_RS = @LEASECOMPINDX_RE BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE LEASECOMPINDX = @LEASECOMPINDX_RS AND ( LEASECOMPINDX > @LEASECOMPINDX ) ORDER BY LEASECOMPINDX ASC END ELSE BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE LEASECOMPINDX BETWEEN @LEASECOMPINDX_RS AND @LEASECOMPINDX_RE AND ( LEASECOMPINDX > @LEASECOMPINDX ) ORDER BY LEASECOMPINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41600N_1] TO [DYNGRP]
GO
