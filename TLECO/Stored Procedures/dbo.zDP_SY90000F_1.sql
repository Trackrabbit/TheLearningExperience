SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000F_1] (@ObjectType_RS char(31), @ObjectID_RS char(61), @PropertyName_RS char(31), @ObjectType_RE char(31), @ObjectID_RE char(61), @PropertyName_RE char(31)) AS  set nocount on IF @ObjectType_RS IS NULL BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 ORDER BY ObjectType ASC, ObjectID ASC, PropertyName ASC END ELSE IF @ObjectType_RS = @ObjectType_RE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType = @ObjectType_RS AND ObjectID BETWEEN @ObjectID_RS AND @ObjectID_RE AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE ORDER BY ObjectType ASC, ObjectID ASC, PropertyName ASC END ELSE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType BETWEEN @ObjectType_RS AND @ObjectType_RE AND ObjectID BETWEEN @ObjectID_RS AND @ObjectID_RE AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE ORDER BY ObjectType ASC, ObjectID ASC, PropertyName ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000F_1] TO [DYNGRP]
GO
