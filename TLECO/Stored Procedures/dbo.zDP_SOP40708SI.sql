SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40708SI] (@USERID char(15), @CURNCYID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP40708 (USERID, CURNCYID) VALUES ( @USERID, @CURNCYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40708SI] TO [DYNGRP]
GO
