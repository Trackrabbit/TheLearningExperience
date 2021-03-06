SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20200SS_2] (@KEYSOURC char(41), @VCHRNMBR char(21), @DOCTYPE smallint, @APTVCHNM char(21), @APTODCTY smallint, @DISTTYPE smallint, @DSTINDX int, @PSTGSTUS smallint) AS  set nocount on SELECT TOP 1  KEYSOURC, VCHRNMBR, DOCTYPE, DSTSQNUM, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, APTVCHNM, APTODCTY, CHANGED, USERID, PSTGSTUS, GLPOSTDT, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .PM20200 WHERE KEYSOURC = @KEYSOURC AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND DISTTYPE = @DISTTYPE AND DSTINDX = @DSTINDX AND PSTGSTUS = @PSTGSTUS ORDER BY KEYSOURC ASC, VCHRNMBR ASC, DOCTYPE ASC, APTVCHNM ASC, APTODCTY ASC, DISTTYPE ASC, DSTINDX ASC, PSTGSTUS ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20200SS_2] TO [DYNGRP]
GO
