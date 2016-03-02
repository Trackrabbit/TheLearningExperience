SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00107SS_2] (@ITEMNMBR char(31), @CURNCYID char(15), @PRCLEVEL char(11), @QTYBSUOM numeric(19,5), @UOFM char(9)) AS  set nocount on SELECT TOP 1  ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, RNDGAMNT, ROUNDHOW, ROUNDTO, UMSLSOPT, QTYBSUOM, DEX_ROW_TS, DEX_ROW_ID FROM .IV00107 WHERE ITEMNMBR = @ITEMNMBR AND CURNCYID = @CURNCYID AND PRCLEVEL = @PRCLEVEL AND QTYBSUOM = @QTYBSUOM AND UOFM = @UOFM ORDER BY ITEMNMBR ASC, CURNCYID ASC, PRCLEVEL ASC, QTYBSUOM ASC, UOFM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00107SS_2] TO [DYNGRP]
GO