SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10002SS_2] (@JRNENTRY int) AS  set nocount on SELECT TOP 1  BACHNUMB, JRNENTRY, ACTINDX, SQNCLINE, OFFINDX, PSTDAMNT, GLLINMSG, DSCRIPTN, GLLINVAL, ACCTTYPE, DECPLACS, OFFACTYP, OFFXVAR, OFFBLCLC, OFFDECPL, DEX_ROW_ID FROM .GL10002 WHERE JRNENTRY = @JRNENTRY ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10002SS_2] TO [DYNGRP]
GO