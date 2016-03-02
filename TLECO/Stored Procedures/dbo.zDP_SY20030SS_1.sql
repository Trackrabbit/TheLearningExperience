SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY20030SS_1] (@TemplateID int, @EntityTypeID int, @EntityIDValue char(31)) AS  set nocount on SELECT TOP 1  TemplateID, EntityTypeID, EntityIDValue, DEX_ROW_ID FROM .SY20030 WHERE TemplateID = @TemplateID AND EntityTypeID = @EntityTypeID AND EntityIDValue = @EntityIDValue ORDER BY TemplateID ASC, EntityTypeID ASC, EntityIDValue ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20030SS_1] TO [DYNGRP]
GO
