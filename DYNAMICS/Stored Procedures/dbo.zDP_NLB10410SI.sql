SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10410SI] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Parameter_Name char(31), @Table_Number smallint, @Field_Number smallint, @STRGA255 char(255), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10410 (Navigation_ID, Ribbon_Command_Group, Command_Number, Parameter_Name, Table_Number, Field_Number, STRGA255) VALUES ( @Navigation_ID, @Ribbon_Command_Group, @Command_Number, @Parameter_Name, @Table_Number, @Field_Number, @STRGA255) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10410SI] TO [DYNGRP]
GO
