SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40708SS_1] (@USERID char(15), @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  USERID, CURNCYID, DEX_ROW_ID FROM .SOP40708 WHERE USERID = @USERID AND CURNCYID = @CURNCYID ORDER BY USERID ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40708SS_1] TO [DYNGRP]
GO