SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP70100SS_1] (@PROCORIG smallint, @USERID char(15), @PONUMBER char(17)) AS  set nocount on SELECT TOP 1  PROCORIG, USERID, PONUMBER, DOCDATE, USER2ENT, POSTATUS, VENDORID, VENDNAME, MKTOPROC, ERROR, DEX_ROW_ID FROM .POP70100 WHERE PROCORIG = @PROCORIG AND USERID = @USERID AND PONUMBER = @PONUMBER ORDER BY PROCORIG ASC, USERID ASC, PONUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP70100SS_1] TO [DYNGRP]
GO