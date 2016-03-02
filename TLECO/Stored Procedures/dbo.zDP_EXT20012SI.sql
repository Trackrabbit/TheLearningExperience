SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20012SI] (@Field_ID int, @Field_Alias char(81), @Alias_Field_ID int, @Field_Number smallint, @Lookup_Field_Number smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20012 (Field_ID, Field_Alias, Alias_Field_ID, Field_Number, Lookup_Field_Number) VALUES ( @Field_ID, @Field_Alias, @Alias_Field_ID, @Field_Number, @Lookup_Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20012SI] TO [DYNGRP]
GO
