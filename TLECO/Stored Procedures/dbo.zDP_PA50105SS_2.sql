SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50105SS_2] (@USERID char(15), @MODULEID smallint, @DUEDATE datetime, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  USERID, DOCTYPE, DOCNUMBR, VCHRNMBR, MODULEID, DOCDATE, DUEDATE, CustVenID, CURTRXAM, ORCTRXAM, CURNCYID, VOIDSTTS, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, TAXDTLID, GSTDSAMT, PPSAMDED, DEX_ROW_ID FROM .PA50105 WHERE USERID = @USERID AND MODULEID = @MODULEID AND DUEDATE = @DUEDATE AND DOCNUMBR = @DOCNUMBR ORDER BY USERID ASC, MODULEID ASC, DUEDATE ASC, DOCNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50105SS_2] TO [DYNGRP]
GO
