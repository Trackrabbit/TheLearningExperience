SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000SS_1] (@ObjectType char(31), @ObjectID char(61), @PropertyName char(31)) AS  set nocount on SELECT TOP 1  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType = @ObjectType AND ObjectID = @ObjectID AND PropertyName = @PropertyName ORDER BY ObjectType ASC, ObjectID ASC, PropertyName ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000SS_1] TO [DYNGRP]
GO
