SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10102SS_2] (@SOPTYPE smallint, @SOPNUMBE char(21), @DISTTYPE smallint, @ACTINDX int) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX ORDER BY SOPTYPE ASC, SOPNUMBE ASC, DISTTYPE ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10102SS_2] TO [DYNGRP]
GO
