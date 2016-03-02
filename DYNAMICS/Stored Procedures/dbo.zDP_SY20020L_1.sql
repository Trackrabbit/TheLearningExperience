SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20020L_1] (@TemplateID_RS int, @CMPANYID_RS smallint, @TemplateID_RE int, @CMPANYID_RE smallint) AS  set nocount on IF @TemplateID_RS IS NULL BEGIN SELECT TOP 25  TemplateID, CMPANYID, IsDefault, DEX_ROW_ID FROM .SY20020 ORDER BY TemplateID DESC, CMPANYID DESC END ELSE IF @TemplateID_RS = @TemplateID_RE BEGIN SELECT TOP 25  TemplateID, CMPANYID, IsDefault, DEX_ROW_ID FROM .SY20020 WHERE TemplateID = @TemplateID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY TemplateID DESC, CMPANYID DESC END ELSE BEGIN SELECT TOP 25  TemplateID, CMPANYID, IsDefault, DEX_ROW_ID FROM .SY20020 WHERE TemplateID BETWEEN @TemplateID_RS AND @TemplateID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY TemplateID DESC, CMPANYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20020L_1] TO [DYNGRP]
GO
