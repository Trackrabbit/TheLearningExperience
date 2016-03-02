SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA50102SI] (@USERID char(15), @CUSTNMBR char(15), @CPRCSTNM char(15), @APFRDCTY smallint, @APFRDCNM char(21), @APTODCTY smallint, @APTODCNM char(21), @APPTOAMT numeric(19,5), @ORAPTOAM numeric(19,5), @DISTKNAM numeric(19,5), @ORDISTKN numeric(19,5), @FROMCURR char(15), @paRefundApply smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PA50102 (USERID, CUSTNMBR, CPRCSTNM, APFRDCTY, APFRDCNM, APTODCTY, APTODCNM, APPTOAMT, ORAPTOAM, DISTKNAM, ORDISTKN, FROMCURR, paRefundApply) VALUES ( @USERID, @CUSTNMBR, @CPRCSTNM, @APFRDCTY, @APFRDCNM, @APTODCTY, @APTODCNM, @APPTOAMT, @ORAPTOAM, @DISTKNAM, @ORDISTKN, @FROMCURR, @paRefundApply) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA50102SI] TO [DYNGRP]
GO
