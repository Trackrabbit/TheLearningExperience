SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00400SI] (@CNTRLNUM char(21), @CNTRLTYP smallint, @DCSTATUS smallint, @DOCTYPE smallint, @VENDORID char(15), @DOCNUMBR char(21), @TRXSORCE char(13), @CHEKBKID char(15), @DUEDATE datetime, @DISCDATE datetime, @BCHSOURC char(15), @DOCDATE datetime, @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM00400 (CNTRLNUM, CNTRLTYP, DCSTATUS, DOCTYPE, VENDORID, DOCNUMBR, TRXSORCE, CHEKBKID, DUEDATE, DISCDATE, BCHSOURC, DOCDATE, USERID) VALUES ( @CNTRLNUM, @CNTRLTYP, @DCSTATUS, @DOCTYPE, @VENDORID, @DOCNUMBR, @TRXSORCE, @CHEKBKID, @DUEDATE, @DISCDATE, @BCHSOURC, @DOCDATE, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00400SI] TO [DYNGRP]
GO