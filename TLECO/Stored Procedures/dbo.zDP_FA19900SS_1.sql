SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA19900SS_1] (@ASSETINDEX int) AS  set nocount on SELECT TOP 1  ASSETINDEX, USRFIELD1, USRFIELD2, USRFIELD3, USRFIELD4, USRFIELD5, USRFIELD6, USRFIELD7, USRFIELD8, USRFIELD9, USRFIELD10, USRFIELD11, USRFIELD12, USRFIELD13, USRFIELD14, USRFIELD15, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA19900 WHERE ASSETINDEX = @ASSETINDEX ORDER BY ASSETINDEX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA19900SS_1] TO [DYNGRP]
GO