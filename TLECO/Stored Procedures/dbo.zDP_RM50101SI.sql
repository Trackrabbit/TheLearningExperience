SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM50101SI] (@USERID char(15), @PRCSSQNC smallint, @CUSTNMBR char(15), @CUSTNAME char(65), @STMTNAME char(65), @STSDESCR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM50101 (USERID, PRCSSQNC, CUSTNMBR, CUSTNAME, STMTNAME, STSDESCR) VALUES ( @USERID, @PRCSSQNC, @CUSTNMBR, @CUSTNAME, @STMTNAME, @STSDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM50101SI] TO [DYNGRP]
GO