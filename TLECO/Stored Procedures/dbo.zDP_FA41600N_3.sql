SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41600N_3] (@BS int, @VENDORID char(15), @LEASECOMPID char(15), @VENDORID_RS char(15), @LEASECOMPID_RS char(15), @VENDORID_RE char(15), @LEASECOMPID_RE char(15)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE ( VENDORID = @VENDORID AND LEASECOMPID > @LEASECOMPID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, LEASECOMPID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE VENDORID = @VENDORID_RS AND LEASECOMPID BETWEEN @LEASECOMPID_RS AND @LEASECOMPID_RE AND ( VENDORID = @VENDORID AND LEASECOMPID > @LEASECOMPID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, LEASECOMPID ASC END ELSE BEGIN SELECT TOP 25  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND LEASECOMPID BETWEEN @LEASECOMPID_RS AND @LEASECOMPID_RE AND ( VENDORID = @VENDORID AND LEASECOMPID > @LEASECOMPID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, LEASECOMPID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41600N_3] TO [DYNGRP]
GO
