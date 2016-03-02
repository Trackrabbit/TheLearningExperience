SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40200SI] (@REPORTID smallint, @RptOptID numeric(19,5), @ROWNMBR smallint, @NMBRACTS int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AF40200 (REPORTID, RptOptID, ROWNMBR, NMBRACTS) VALUES ( @REPORTID, @RptOptID, @ROWNMBR, @NMBRACTS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40200SI] TO [DYNGRP]
GO
