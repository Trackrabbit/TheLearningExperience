SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRATT001SS_1] (@Attachment_ID char(37)) AS  set nocount on SELECT TOP 1  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, DEX_ROW_ID FROM .HRATT001 WHERE Attachment_ID = @Attachment_ID ORDER BY Attachment_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRATT001SS_1] TO [DYNGRP]
GO
