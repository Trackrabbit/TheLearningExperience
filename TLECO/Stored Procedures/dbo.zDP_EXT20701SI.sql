SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20701SI] (@Extender_Import_ID char(15), @Field_ID int, @Field_Number smallint, @Start_Position smallint, @End_Position smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20701 (Extender_Import_ID, Field_ID, Field_Number, Start_Position, End_Position) VALUES ( @Extender_Import_ID, @Field_ID, @Field_Number, @Start_Position, @End_Position) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20701SI] TO [DYNGRP]
GO
