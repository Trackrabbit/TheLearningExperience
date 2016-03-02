SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30800L_3] (@TaxInvRecvd_RS tinyint, @DOCNUMBR_RS char(21), @VCHRNMBR_RS char(21), @TaxInvRecvd_RE tinyint, @DOCNUMBR_RE char(21), @VCHRNMBR_RE char(21)) AS  set nocount on IF @TaxInvRecvd_RS IS NULL BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 ORDER BY TaxInvRecvd DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE IF @TaxInvRecvd_RS = @TaxInvRecvd_RE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 WHERE TaxInvRecvd = @TaxInvRecvd_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TaxInvRecvd DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT, DEX_ROW_ID FROM .PM30800 WHERE TaxInvRecvd BETWEEN @TaxInvRecvd_RS AND @TaxInvRecvd_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TaxInvRecvd DESC, DOCNUMBR DESC, VCHRNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30800L_3] TO [DYNGRP]
GO