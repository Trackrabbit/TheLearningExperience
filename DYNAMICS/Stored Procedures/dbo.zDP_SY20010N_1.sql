SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20010N_1] (@BS int, @TemplateID int, @TemplatePartID smallint, @TemplateID_RS int, @TemplatePartID_RS smallint, @TemplateID_RE int, @TemplatePartID_RE smallint) AS  set nocount on IF @TemplateID_RS IS NULL BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE ( TemplateID = @TemplateID AND TemplatePartID > @TemplatePartID OR TemplateID > @TemplateID ) ORDER BY TemplateID ASC, TemplatePartID ASC END ELSE IF @TemplateID_RS = @TemplateID_RE BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE TemplateID = @TemplateID_RS AND TemplatePartID BETWEEN @TemplatePartID_RS AND @TemplatePartID_RE AND ( TemplateID = @TemplateID AND TemplatePartID > @TemplatePartID OR TemplateID > @TemplateID ) ORDER BY TemplateID ASC, TemplatePartID ASC END ELSE BEGIN SELECT TOP 25  TemplateID, TemplatePartID, DEX_ROW_ID, TemplatePartXML FROM .SY20010 WHERE TemplateID BETWEEN @TemplateID_RS AND @TemplateID_RE AND TemplatePartID BETWEEN @TemplatePartID_RS AND @TemplatePartID_RE AND ( TemplateID = @TemplateID AND TemplatePartID > @TemplatePartID OR TemplateID > @TemplateID ) ORDER BY TemplateID ASC, TemplatePartID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20010N_1] TO [DYNGRP]
GO
