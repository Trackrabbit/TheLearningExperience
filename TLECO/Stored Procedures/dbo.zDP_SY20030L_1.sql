SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY20030L_1] (@TemplateID_RS int, @EntityTypeID_RS int, @EntityIDValue_RS char(31), @TemplateID_RE int, @EntityTypeID_RE int, @EntityIDValue_RE char(31)) AS  set nocount on IF @TemplateID_RS IS NULL BEGIN SELECT TOP 25  TemplateID, EntityTypeID, EntityIDValue, DEX_ROW_ID FROM .SY20030 ORDER BY TemplateID DESC, EntityTypeID DESC, EntityIDValue DESC END ELSE IF @TemplateID_RS = @TemplateID_RE BEGIN SELECT TOP 25  TemplateID, EntityTypeID, EntityIDValue, DEX_ROW_ID FROM .SY20030 WHERE TemplateID = @TemplateID_RS AND EntityTypeID BETWEEN @EntityTypeID_RS AND @EntityTypeID_RE AND EntityIDValue BETWEEN @EntityIDValue_RS AND @EntityIDValue_RE ORDER BY TemplateID DESC, EntityTypeID DESC, EntityIDValue DESC END ELSE BEGIN SELECT TOP 25  TemplateID, EntityTypeID, EntityIDValue, DEX_ROW_ID FROM .SY20030 WHERE TemplateID BETWEEN @TemplateID_RS AND @TemplateID_RE AND EntityTypeID BETWEEN @EntityTypeID_RS AND @EntityTypeID_RE AND EntityIDValue BETWEEN @EntityIDValue_RS AND @EntityIDValue_RE ORDER BY TemplateID DESC, EntityTypeID DESC, EntityIDValue DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20030L_1] TO [DYNGRP]
GO
