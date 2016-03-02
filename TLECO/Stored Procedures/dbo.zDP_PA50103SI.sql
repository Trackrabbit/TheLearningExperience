SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50103SI] (@APTVCHNM char(21), @VCHRNMBR char(21), @VENDORID char(15), @APTODCTY smallint, @DOCTYPE smallint, @APTODCNM char(21), @APPLDAMT numeric(19,5), @DOCDATE datetime, @CUSTNMBR char(15), @CURNCYID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PA50103 (APTVCHNM, VCHRNMBR, VENDORID, APTODCTY, DOCTYPE, APTODCNM, APPLDAMT, DOCDATE, CUSTNMBR, CURNCYID) VALUES ( @APTVCHNM, @VCHRNMBR, @VENDORID, @APTODCTY, @DOCTYPE, @APTODCNM, @APPLDAMT, @DOCDATE, @CUSTNMBR, @CURNCYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50103SI] TO [DYNGRP]
GO