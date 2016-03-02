SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20310SI] (@Extender_Template_ID int, @Field_ID int, @STRGA255 char(255), @TOTAL numeric(19,5), @Template_Date_Option smallint, @Template_Number_Option smallint, @Template_Time_Option smallint, @Replacement_Rule smallint, @Random_CB tinyint, @Template_Field_Type smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20310 (Extender_Template_ID, Field_ID, STRGA255, TOTAL, Template_Date_Option, Template_Number_Option, Template_Time_Option, Replacement_Rule, Random_CB, Template_Field_Type) VALUES ( @Extender_Template_ID, @Field_ID, @STRGA255, @TOTAL, @Template_Date_Option, @Template_Number_Option, @Template_Time_Option, @Replacement_Rule, @Random_CB, @Template_Field_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20310SI] TO [DYNGRP]
GO
