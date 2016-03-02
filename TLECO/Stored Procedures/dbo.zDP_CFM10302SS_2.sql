SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM10302SS_2] (@DUEDATE datetime, @CUSTNMBR char(15), @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  CUSTNMBR, DOCNUMBR, RMDTYPAL, DUEDATE, DOCDATE, DOCAMNT, ACCTAMNT, TRXDSCRN, DEX_ROW_ID FROM .CFM10302 WHERE DUEDATE = @DUEDATE AND CUSTNMBR = @CUSTNMBR AND DOCNUMBR = @DOCNUMBR ORDER BY DUEDATE ASC, CUSTNMBR ASC, DOCNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM10302SS_2] TO [DYNGRP]
GO