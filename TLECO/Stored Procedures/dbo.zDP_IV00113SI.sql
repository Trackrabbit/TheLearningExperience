SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00113SI] (@ITEMNMBR char(31), @CURNCYID char(15), @PRCLEVEL char(11), @UOFM char(9), @TOQTY numeric(19,5), @PRICTYPE smallint, @PRCNTAGE numeric(19,5), @UOMPRICE numeric(19,5), @INCORDEC smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00113 (ITEMNMBR, CURNCYID, PRCLEVEL, UOFM, TOQTY, PRICTYPE, PRCNTAGE, UOMPRICE, INCORDEC) VALUES ( @ITEMNMBR, @CURNCYID, @PRCLEVEL, @UOFM, @TOQTY, @PRICTYPE, @PRCNTAGE, @UOMPRICE, @INCORDEC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00113SI] TO [DYNGRP]
GO