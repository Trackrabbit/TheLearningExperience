SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41500SS_1] (@SHFTCODE char(7)) AS  set nocount on SELECT TOP 1  SHFTCODE, DSCRIPTN, SHFTTYPE, SHFTAMT, SHFTPCT, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR41500 WHERE SHFTCODE = @SHFTCODE ORDER BY SHFTCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41500SS_1] TO [DYNGRP]
GO