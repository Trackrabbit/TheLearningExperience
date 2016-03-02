SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07550SI] (@MAPPRLOC char(61), @SVC_Item_Image_Folder char(61), @SVC_TimeOut smallint, @SVC_CycleTime smallint, @SVC_LicensedUser char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC07550 (MAPPRLOC, SVC_Item_Image_Folder, SVC_TimeOut, SVC_CycleTime, SVC_LicensedUser) VALUES ( @MAPPRLOC, @SVC_Item_Image_Folder, @SVC_TimeOut, @SVC_CycleTime, @SVC_LicensedUser) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07550SI] TO [DYNGRP]
GO
