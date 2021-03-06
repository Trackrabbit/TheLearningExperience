SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP50101SS_2] (@JRNENTRY int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, TRXAMNT, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, ORIGAMT, DOCNUMBR, CUSTNMBR, CUSTNAME, DOCDATE, DEX_ROW_ID FROM .PP50101 WHERE JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE ORDER BY JRNENTRY ASC, SQNCLINE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP50101SS_2] TO [DYNGRP]
GO
