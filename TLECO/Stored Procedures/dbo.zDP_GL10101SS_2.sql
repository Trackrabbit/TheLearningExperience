SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10101SS_2] (@ACTINDX int) AS  set nocount on SELECT TOP 1  BSNSFMID, JRNENTRY, SQNCLINE, ACTINDX, TRXAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, DEX_ROW_ID FROM .GL10101 WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10101SS_2] TO [DYNGRP]
GO