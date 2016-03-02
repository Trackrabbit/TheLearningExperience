SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbInvcSI] (@DOCNUMBR char(21), @SEQNUMBR int, @APTODCTY smallint, @APTODCNM char(21), @APPTOAMT numeric(19,5), @CUSTNMBR char(15), @CUSTNAME char(65), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .palbInvc (DOCNUMBR, SEQNUMBR, APTODCTY, APTODCNM, APPTOAMT, CUSTNMBR, CUSTNAME) VALUES ( @DOCNUMBR, @SEQNUMBR, @APTODCTY, @APTODCNM, @APPTOAMT, @CUSTNMBR, @CUSTNAME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbInvcSI] TO [DYNGRP]
GO
