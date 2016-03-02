SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20300SI] (@Extender_Template_ID int, @Template_Description char(65), @Extender_Type smallint, @Extender_ID char(15), @Replacement_Rule smallint, @Field_ID int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20300 (Extender_Template_ID, Template_Description, Extender_Type, Extender_ID, Replacement_Rule, Field_ID) VALUES ( @Extender_Template_ID, @Template_Description, @Extender_Type, @Extender_ID, @Replacement_Rule, @Field_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20300SI] TO [DYNGRP]
GO
