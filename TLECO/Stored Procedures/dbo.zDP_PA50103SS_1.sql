SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50103SS_1] (@VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM char(21), @APTODCTY smallint) AS  set nocount on SELECT TOP 1  APTVCHNM, VCHRNMBR, VENDORID, APTODCTY, DOCTYPE, APTODCNM, APPLDAMT, DOCDATE, CUSTNMBR, CURNCYID, DEX_ROW_ID FROM .PA50103 WHERE VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY ORDER BY VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50103SS_1] TO [DYNGRP]
GO