SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20020SS_1] (@TemplateID int, @CMPANYID smallint) AS  set nocount on SELECT TOP 1  TemplateID, CMPANYID, IsDefault, DEX_ROW_ID FROM .SY20020 WHERE TemplateID = @TemplateID AND CMPANYID = @CMPANYID ORDER BY TemplateID ASC, CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20020SS_1] TO [DYNGRP]
GO
