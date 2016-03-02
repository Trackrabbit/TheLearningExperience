SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000L_2] (@ObjectType_RS char(31), @PropertyName_RS char(31), @PropertyValue_RS char(133), @ObjectType_RE char(31), @PropertyName_RE char(31), @PropertyValue_RE char(133)) AS  set nocount on IF @ObjectType_RS IS NULL BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 ORDER BY ObjectType DESC, PropertyName DESC, PropertyValue DESC, DEX_ROW_ID DESC END ELSE IF @ObjectType_RS = @ObjectType_RE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType = @ObjectType_RS AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE AND PropertyValue BETWEEN @PropertyValue_RS AND @PropertyValue_RE ORDER BY ObjectType DESC, PropertyName DESC, PropertyValue DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ObjectType, ObjectID, PropertyName, PropertyValue, DEX_ROW_ID FROM .SY90000 WHERE ObjectType BETWEEN @ObjectType_RS AND @ObjectType_RE AND PropertyName BETWEEN @PropertyName_RS AND @PropertyName_RE AND PropertyValue BETWEEN @PropertyValue_RS AND @PropertyValue_RE ORDER BY ObjectType DESC, PropertyName DESC, PropertyValue DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000L_2] TO [DYNGRP]
GO
