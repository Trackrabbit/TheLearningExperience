SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00108SI] (@ITEMNMBR char(31), @CURNCYID char(15), @PRCLEVEL char(11), @UOFM char(9), @TOQTY numeric(19,5), @FROMQTY numeric(19,5), @UOMPRICE numeric(19,5), @QTYBSUOM numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00108 (ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, TOQTY, FROMQTY, UOMPRICE, QTYBSUOM) VALUES ( @ITEMNMBR, @CURNCYID, @PRCLEVEL, @UOFM, @TOQTY, @FROMQTY, @UOMPRICE, @QTYBSUOM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00108SI] TO [DYNGRP]
GO