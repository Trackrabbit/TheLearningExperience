SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRREF003SS_1] (@BusObjKey char(201), @Attachment_ID char(37)) AS  set nocount on SELECT TOP 1  BusObjKey, Attachment_ID, CRUSRID, CREATDDT, CREATETIME, DELETE1, DEX_ROW_ID FROM .HRREF003 WHERE BusObjKey = @BusObjKey AND Attachment_ID = @Attachment_ID ORDER BY BusObjKey ASC, Attachment_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREF003SS_1] TO [DYNGRP]
GO
