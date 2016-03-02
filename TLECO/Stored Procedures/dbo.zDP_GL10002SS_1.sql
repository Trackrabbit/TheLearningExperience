SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10002SS_1] (@JRNENTRY int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE ORDER BY JRNENTRY ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10002SS_1] TO [DYNGRP]
GO