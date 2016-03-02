SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400000SS_4] (@SERIES smallint, @BACHNUMB char(15)) AS  set nocount on SELECT TOP 1  BCHSOURC, SERIES, BACHNUMB, BCHCOMNT, BCHSTTUS, MKDTOPST, NUMOFTRX, BCHTOTAL, CNTRLTRX, CNTRLTOT, NOTEINDX, CREATDDT, MODIFDT, USERID, BCHEMSG1, BCHEMSG2, TRXSORCE, DEX_ROW_ID FROM .PP400000 WHERE SERIES = @SERIES AND BACHNUMB = @BACHNUMB ORDER BY SERIES ASC, BACHNUMB ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400000SS_4] TO [DYNGRP]
GO
