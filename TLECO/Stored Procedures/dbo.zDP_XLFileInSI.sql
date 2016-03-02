SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLFileInSI] (@FILEIDX int, @BUDGETID char(15), @fileName char(255), @Worksht char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .XLFileIn (FILEIDX, BUDGETID, fileName, Worksht) VALUES ( @FILEIDX, @BUDGETID, @fileName, @Worksht) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLFileInSI] TO [DYNGRP]
GO
