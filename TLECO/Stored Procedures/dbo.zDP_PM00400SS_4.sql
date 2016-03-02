SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400SS_4] (@VENDORID char(15), @DCSTATUS smallint, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE VENDORID = @VENDORID AND DCSTATUS = @DCSTATUS AND DOCNUMBR = @DOCNUMBR ORDER BY VENDORID ASC, DCSTATUS ASC, DOCNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400SS_4] TO [DYNGRP]
GO