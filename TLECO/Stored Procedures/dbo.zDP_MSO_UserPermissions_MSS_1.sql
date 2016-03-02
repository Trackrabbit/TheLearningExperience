SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_UserPermissions_MSS_1] (@MSO_UserID char(51)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_UserID, MSO_UserPermissionViewCC, DEX_ROW_ID FROM .MSO_UserPermissions_MSTR WHERE MSO_UserID = @MSO_UserID ORDER BY MSO_UserID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_UserPermissions_MSS_1] TO [DYNGRP]
GO
