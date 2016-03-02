SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY20030SI] (@TemplateID int, @EntityTypeID int, @EntityIDValue char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY20030 (TemplateID, EntityTypeID, EntityIDValue) VALUES ( @TemplateID, @EntityTypeID, @EntityIDValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20030SI] TO [DYNGRP]
GO
