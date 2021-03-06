SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00401N_1] (@BS int, @ITEMNMBR char(31), @SUGITEMNMBR char(31), @ITEMNMBR_RS char(31), @SUGITEMNMBR_RS char(31), @ITEMNMBR_RE char(31), @SUGITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, SUGITEMNMBR, SUGITEMDEC, SUGQUANTITY, SALESSCRIPT, DEX_ROW_ID FROM .IV00401 WHERE ( ITEMNMBR = @ITEMNMBR AND SUGITEMNMBR > @SUGITEMNMBR OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SUGITEMNMBR ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, SUGITEMNMBR, SUGITEMDEC, SUGQUANTITY, SALESSCRIPT, DEX_ROW_ID FROM .IV00401 WHERE ITEMNMBR = @ITEMNMBR_RS AND SUGITEMNMBR BETWEEN @SUGITEMNMBR_RS AND @SUGITEMNMBR_RE AND ( ITEMNMBR = @ITEMNMBR AND SUGITEMNMBR > @SUGITEMNMBR OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SUGITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, SEQNUMBR, SUGITEMNMBR, SUGITEMDEC, SUGQUANTITY, SALESSCRIPT, DEX_ROW_ID FROM .IV00401 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SUGITEMNMBR BETWEEN @SUGITEMNMBR_RS AND @SUGITEMNMBR_RE AND ( ITEMNMBR = @ITEMNMBR AND SUGITEMNMBR > @SUGITEMNMBR OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SUGITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00401N_1] TO [DYNGRP]
GO
