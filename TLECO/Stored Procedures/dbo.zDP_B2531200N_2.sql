SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2531200N_2] (@BS int, @PARVENID char(15), @VENDORID char(15), @PARVENID_RS char(15), @VENDORID_RS char(15), @PARVENID_RE char(15), @VENDORID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @PARVENID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, PARVENID, BS25_Transmission_Method, BS25_TradeDiscount, DEX_ROW_ID FROM .B2531200 WHERE ( PARVENID = @PARVENID AND VENDORID > @VENDORID OR PARVENID > @PARVENID ) ORDER BY PARVENID ASC, VENDORID ASC END ELSE IF @PARVENID_RS = @PARVENID_RE BEGIN SELECT TOP 25  VENDORID, PARVENID, BS25_Transmission_Method, BS25_TradeDiscount, DEX_ROW_ID FROM .B2531200 WHERE PARVENID = @PARVENID_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( PARVENID = @PARVENID AND VENDORID > @VENDORID OR PARVENID > @PARVENID ) ORDER BY PARVENID ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, PARVENID, BS25_Transmission_Method, BS25_TradeDiscount, DEX_ROW_ID FROM .B2531200 WHERE PARVENID BETWEEN @PARVENID_RS AND @PARVENID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( PARVENID = @PARVENID AND VENDORID > @VENDORID OR PARVENID > @PARVENID ) ORDER BY PARVENID ASC, VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2531200N_2] TO [DYNGRP]
GO
