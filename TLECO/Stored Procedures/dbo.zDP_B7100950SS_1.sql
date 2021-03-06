SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100950SS_1] (@BACHNUMB char(15), @JRNENTRY int, @SQNCLINE numeric(19,5), @USERID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BACHNUMB, JRNENTRY, SQNCLINE, INTERID, ACTINDX, USERID, TRXDATE, ORCRDAMT, DEX_ROW_ID FROM .B7100950 WHERE BACHNUMB = @BACHNUMB AND JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE AND USERID = @USERID ORDER BY BACHNUMB ASC, JRNENTRY ASC, SQNCLINE ASC, USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100950SS_1] TO [DYNGRP]
GO
