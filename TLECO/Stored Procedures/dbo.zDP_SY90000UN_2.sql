SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000UN_2] (@BS int, @ObjectType char(31), @PropertyName char(31), @PropertyValue char(133), @ObjectType_RS char(31), @PropertyName_RS char(31), @PropertyValue_RS char(133), @ObjectType_RE char(31), @PropertyName_RE char(31), @PropertyValue_RE char(133)) AS  set nocount on IF @ObjectType_RS IS NULL BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ( ObjectType = @ObjectType AND PropertyName = @PropertyName AND PropertyValue > @PropertyValue OR ObjectType = @ObjectType AND PropertyName > @PropertyName OR ObjectType > @ObjectType ) ORDER BY ObjectType ASC, PropertyName ASC, PropertyValue ASC, DEX_ROW_ID ASC END ELSE IF @ObjectType_RS = @ObjectType_RE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType = @ObjectType_RS AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE AND PropertyValue BETWEEN @PropertyValue_RS AND @PropertyValue_RE AND ( ObjectType = @ObjectType AND PropertyName = @PropertyName AND PropertyValue > @PropertyValue OR ObjectType = @ObjectType AND PropertyName > @PropertyName OR ObjectType > @ObjectType ) ORDER BY ObjectType ASC, PropertyName ASC, PropertyValue ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType BETWEEN @ObjectType_RS AND @ObjectType_RE AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE AND PropertyValue BETWEEN @PropertyValue_RS AND @PropertyValue_RE AND ( ObjectType = @ObjectType AND PropertyName = @PropertyName AND PropertyValue > @PropertyValue OR ObjectType = @ObjectType AND PropertyName > @PropertyName OR ObjectType > @ObjectType ) ORDER BY ObjectType ASC, PropertyName ASC, PropertyValue ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000UN_2] TO [DYNGRP]
GO