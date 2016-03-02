SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07550SS_1] (@SVC_Item_Image_Folder char(61), @MAPPRLOC char(61)) AS  set nocount on SELECT TOP 1  MAPPRLOC, SVC_Item_Image_Folder, SVC_TimeOut, SVC_CycleTime, SVC_LicensedUser, DEX_ROW_ID FROM .SVC07550 WHERE SVC_Item_Image_Folder = @SVC_Item_Image_Folder AND MAPPRLOC = @MAPPRLOC ORDER BY SVC_Item_Image_Folder ASC, MAPPRLOC ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07550SS_1] TO [DYNGRP]
GO
