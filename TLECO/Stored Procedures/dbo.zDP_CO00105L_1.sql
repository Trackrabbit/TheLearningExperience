SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00105L_1] (@BusObjKey_RS char(201), @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @Attachment_ID_RE char(37)) AS  set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 ORDER BY BusObjKey DESC, Attachment_ID DESC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 WHERE BusObjKey = @BusObjKey_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, Attachment_ID DESC END ELSE BEGIN SELECT TOP 25  BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1, DEX_ROW_ID FROM .CO00105 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey DESC, Attachment_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00105L_1] TO [DYNGRP]
GO