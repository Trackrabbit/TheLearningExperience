SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20020SI] (@TemplateID int, @CMPANYID smallint, @IsDefault tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY20020 (TemplateID, CMPANYID, IsDefault) VALUES ( @TemplateID, @CMPANYID, @IsDefault) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20020SI] TO [DYNGRP]
GO
