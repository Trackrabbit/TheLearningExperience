SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09000SS_2] (@SECURITYTASKCATEGORY smallint, @SECURITYTASKID char(25)) AS  set nocount on SELECT TOP 1  SECURITYTASKID, SECURITYTASKNAME, SECURITYTASKDESC, SECURITYTASKCATEGORY, DEFSECTASK, CRUSRID, CREATDDT, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .SY09000 WHERE SECURITYTASKCATEGORY = @SECURITYTASKCATEGORY AND SECURITYTASKID = @SECURITYTASKID ORDER BY SECURITYTASKCATEGORY ASC, SECURITYTASKID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09000SS_2] TO [DYNGRP]
GO
