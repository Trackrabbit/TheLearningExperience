SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50105SI] (@USERID char(15), @DOCTYPE smallint, @DOCNUMBR char(21), @VCHRNMBR char(21), @MODULEID smallint, @DOCDATE datetime, @DUEDATE datetime, @CustVenID char(15), @CURTRXAM numeric(19,5), @ORCTRXAM numeric(19,5), @CURNCYID char(15), @VOIDSTTS smallint, @APPLDAMT numeric(19,5), @ORAPPAMT numeric(19,5), @DISTKNAM numeric(19,5), @ORDISTKN numeric(19,5), @DISAVTKN numeric(19,5), @ORDATKN numeric(19,5), @TAXDTLID char(15), @GSTDSAMT numeric(19,5), @PPSAMDED numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PA50105 (USERID, DOCTYPE, DOCNUMBR, VCHRNMBR, MODULEID, DOCDATE, DUEDATE, CustVenID, CURTRXAM, ORCTRXAM, CURNCYID, VOIDSTTS, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, DISAVTKN, ORDATKN, TAXDTLID, GSTDSAMT, PPSAMDED) VALUES ( @USERID, @DOCTYPE, @DOCNUMBR, @VCHRNMBR, @MODULEID, @DOCDATE, @DUEDATE, @CustVenID, @CURTRXAM, @ORCTRXAM, @CURNCYID, @VOIDSTTS, @APPLDAMT, @ORAPPAMT, @DISTKNAM, @ORDISTKN, @DISAVTKN, @ORDATKN, @TAXDTLID, @GSTDSAMT, @PPSAMDED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50105SI] TO [DYNGRP]
GO
