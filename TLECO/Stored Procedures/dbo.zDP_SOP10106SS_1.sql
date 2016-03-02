SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10106SS_1] (@SOPTYPE smallint, @SOPNUMBE char(21)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .SOP10106 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE ORDER BY SOPTYPE ASC, SOPNUMBE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10106SS_1] TO [DYNGRP]
GO
