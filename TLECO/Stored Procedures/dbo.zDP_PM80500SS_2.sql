SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80500SS_2] (@TRXSORCE char(13), @VCHRNMBR char(21)) AS  set nocount on SELECT TOP 1  TRXSORCE, VCHRNMBR, DOCTYPE, APFRDCNM, VENDORID, APTVCHNM, APTODCTY, APTODCNM, APPLDAMT, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, TAXDTLID, POSTEDDT, PTDUSRID, TEN99AMNT, DISAVTKN, DOCDATE, APTODCDT, KEYSOURC, ORAPPAMT, ORDISTKN, ORWROFAM, ORDATKN, RLGANLOS, DEX_ROW_ID FROM .PM80500 WHERE TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80500SS_2] TO [DYNGRP]
GO