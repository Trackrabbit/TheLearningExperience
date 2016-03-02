SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41301SS_1] (@TAXCODE char(7), @TXFLGSTS char(7)) AS  set nocount on SELECT TOP 1  TAXCODE, TXFLGSTS, STSDESCR, LINCLIM, PRSEXAMT, INCPSNEX, INCADALW, INCLDEPN, FDTXPRCT, FEDTXMAX, FICATXPT, FICATXMN, FLATAXRT, STDDMTHD, STDDPCNT, STDDEDAM, STDEDMIN, STDEDMAX, SPCLEXAM, SPCLSDED, SPCLTXRT, DEX_ROW_ID FROM .UPR41301 WHERE TAXCODE = @TAXCODE AND TXFLGSTS = @TXFLGSTS ORDER BY TAXCODE ASC, TXFLGSTS ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41301SS_1] TO [DYNGRP]
GO