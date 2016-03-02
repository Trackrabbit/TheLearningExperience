SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00921SI] (@SRVTYPE char(11), @LNITMSEQ int, @ITEMNMBR char(31), @ITEMDESC char(101), @QUANTITY numeric(19,5), @LISTPRCE numeric(19,5), @COSTAMNT numeric(19,5), @PRICSHED char(11), @CBLABOR tinyint, @CBARTS tinyint, @CBEXP tinyint, @CBADDNL tinyint, @DLRORPCT char(1), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00921 (SRVTYPE, LNITMSEQ, ITEMNMBR, ITEMDESC, QUANTITY, LISTPRCE, COSTAMNT, PRICSHED, CBLABOR, CBARTS, CBEXP, CBADDNL, DLRORPCT) VALUES ( @SRVTYPE, @LNITMSEQ, @ITEMNMBR, @ITEMDESC, @QUANTITY, @LISTPRCE, @COSTAMNT, @PRICSHED, @CBLABOR, @CBARTS, @CBEXP, @CBADDNL, @DLRORPCT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00921SI] TO [DYNGRP]
GO