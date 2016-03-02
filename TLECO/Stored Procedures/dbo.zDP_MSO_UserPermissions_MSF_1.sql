SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_UserPermissions_MSF_1] (@MSO_UserID_RS char(51), @MSO_UserID_RE char(51)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_UserID_RS IS NULL BEGIN SELECT TOP 25  MSO_UserID, MSO_UserPermissionViewCC, DEX_ROW_ID FROM .MSO_UserPermissions_MSTR ORDER BY MSO_UserID ASC END ELSE IF @MSO_UserID_RS = @MSO_UserID_RE BEGIN SELECT TOP 25  MSO_UserID, MSO_UserPermissionViewCC, DEX_ROW_ID FROM .MSO_UserPermissions_MSTR WHERE MSO_UserID = @MSO_UserID_RS ORDER BY MSO_UserID ASC END ELSE BEGIN SELECT TOP 25  MSO_UserID, MSO_UserPermissionViewCC, DEX_ROW_ID FROM .MSO_UserPermissions_MSTR WHERE MSO_UserID BETWEEN @MSO_UserID_RS AND @MSO_UserID_RE ORDER BY MSO_UserID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_UserPermissions_MSF_1] TO [DYNGRP]
GO
