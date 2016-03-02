SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30800L_1] (@VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 ORDER BY VCHRNMBR DESC, DOCTYPE DESC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 WHERE VCHRNMBR = @VCHRNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY VCHRNMBR DESC, DOCTYPE DESC END ELSE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY VCHRNMBR DESC, DOCTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30800L_1] TO [DYNGRP]
GO