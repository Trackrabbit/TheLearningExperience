SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRATT001L_1] (@Attachment_ID_RS char(37), @Attachment_ID_RE char(37)) AS  set nocount on IF @Attachment_ID_RS IS NULL BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, DEX_ROW_ID FROM .HRATT001 ORDER BY Attachment_ID DESC END ELSE IF @Attachment_ID_RS = @Attachment_ID_RE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, DEX_ROW_ID FROM .HRATT001 WHERE Attachment_ID = @Attachment_ID_RS ORDER BY Attachment_ID DESC END ELSE BEGIN SELECT TOP 25  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, DEX_ROW_ID FROM .HRATT001 WHERE Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY Attachment_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRATT001L_1] TO [DYNGRP]
GO
