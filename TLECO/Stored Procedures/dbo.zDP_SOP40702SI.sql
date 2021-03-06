SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40702SI] (@USERID char(15), @ITEMNMBR char(31), @UOFM char(9), @UMQTYINB numeric(19,5), @QTYFROM numeric(19,5), @QTYTO numeric(19,5), @UNITPRCE numeric(19,5), @CURNCYID char(15), @ERRVAL int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP40702 (USERID, ITEMNMBR, UOFM, UMQTYINB, QTYFROM, QTYTO, UNITPRCE, CURNCYID, ERRVAL) VALUES ( @USERID, @ITEMNMBR, @UOFM, @UMQTYINB, @QTYFROM, @QTYTO, @UNITPRCE, @CURNCYID, @ERRVAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40702SI] TO [DYNGRP]
GO
