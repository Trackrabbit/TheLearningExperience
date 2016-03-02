SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000SS_2] (@ObjectType char(31), @PropertyName char(31), @PropertyValue char(133)) AS  set nocount on SELECT TOP 1  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType = @ObjectType AND PropertyName = @PropertyName AND PropertyValue = @PropertyValue ORDER BY ObjectType ASC, PropertyName ASC, PropertyValue ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000SS_2] TO [DYNGRP]
GO
