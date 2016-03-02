SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000SI] (@ObjectType char(31), @ObjectID char(61), @PropertyName char(31), @PropertyValue char(133), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY90000 (ObjectType, ObjectID, PropertyName, PropertyValue) VALUES ( @ObjectType, @ObjectID, @PropertyName, @PropertyValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000SI] TO [DYNGRP]
GO
