SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40704SI] (@USERID char(15), @PRCBKID char(15), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5), @QTYTO numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP40704 (USERID, PRCBKID, ITEMNMBR, UOFM, QTYFROM, QTYTO) VALUES ( @USERID, @PRCBKID, @ITEMNMBR, @UOFM, @QTYFROM, @QTYTO) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40704SI] TO [DYNGRP]
GO
