SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10201SI] (@ITEMNMBR char(31), @TRXLOCTN char(11), @QTYTYPE smallint, @DOCDATE datetime, @RCTSEQNM int, @ORIGINDOCTYPE smallint, @ORIGINDOCID char(31), @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @QTYSOLD numeric(19,5), @UNITCOST numeric(19,5), @IVIVINDX int, @IVIVOFIX int, @SRCRCTSEQNM int, @TRXREFERENCE smallint, @PCHSRCTY smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV10201 (ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY) VALUES ( @ITEMNMBR, @TRXLOCTN, @QTYTYPE, @DOCDATE, @RCTSEQNM, @ORIGINDOCTYPE, @ORIGINDOCID, @LNSEQNBR, @CMPNTSEQ, @QTYSOLD, @UNITCOST, @IVIVINDX, @IVIVOFIX, @SRCRCTSEQNM, @TRXREFERENCE, @PCHSRCTY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10201SI] TO [DYNGRP]
GO
