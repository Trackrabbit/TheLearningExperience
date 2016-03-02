SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400SS_6] (@TRXSORCE char(13), @CNTRLNUM char(21)) AS  set nocount on SELECT TOP 1  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE TRXSORCE = @TRXSORCE AND CNTRLNUM = @CNTRLNUM ORDER BY TRXSORCE ASC, CNTRLNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400SS_6] TO [DYNGRP]
GO
