SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM20102SS_1] (@DUEDATE datetime) AS  set nocount on SELECT TOP 1  CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, ORTRXAMT, CURTRXAM, TRXDSCRN, DEX_ROW_ID FROM .CFM20102 WHERE DUEDATE = @DUEDATE ORDER BY DUEDATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM20102SS_1] TO [DYNGRP]
GO
