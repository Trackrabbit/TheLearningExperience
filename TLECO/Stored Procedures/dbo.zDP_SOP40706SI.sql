SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40706SI] (@USERID char(15), @PRCBKID char(15), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5), @QTYTO numeric(19,5), @UMQTYINB numeric(19,5), @UNITPRCE numeric(19,5), @CURNCYID char(15), @ERRVAL int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP40706 (USERID, PRCBKID, ITEMNMBR, UOFM, QTYFROM, QTYTO, UMQTYINB, UNITPRCE, CURNCYID, ERRVAL) VALUES ( @USERID, @PRCBKID, @ITEMNMBR, @UOFM, @QTYFROM, @QTYTO, @UMQTYINB, @UNITPRCE, @CURNCYID, @ERRVAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40706SI] TO [DYNGRP]
GO
