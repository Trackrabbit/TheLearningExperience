SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400SS_3] (@DOCNUMBR char(21), @CHEKBKID char(15)) AS  set nocount on SELECT TOP 1  CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID, DEX_ROW_ID FROM .PM00400 WHERE DOCNUMBR = @DOCNUMBR AND CHEKBKID = @CHEKBKID ORDER BY DOCNUMBR ASC, CHEKBKID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400SS_3] TO [DYNGRP]
GO
