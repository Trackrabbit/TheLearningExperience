SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00103F_1] (@BusObjKey_RS char(201), @Attachment_ID_RS char(37), @BusObjKey_RE char(201), @Attachment_ID_RE char(37)) AS  set nocount on IF @BusObjKey_RS IS NULL BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, DefaultAttachType, AttachAttributeDefault, AttributeShortName_1, AttributeShortName_2, AttributeShortName_3, AttributeShortName_4, AttributeShortName_5, AllowAttachmentsEmail, DEX_ROW_ID FROM .CO00103 ORDER BY BusObjKey ASC, Attachment_ID ASC END ELSE IF @BusObjKey_RS = @BusObjKey_RE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, DefaultAttachType, AttachAttributeDefault, AttributeShortName_1, AttributeShortName_2, AttributeShortName_3, AttributeShortName_4, AttributeShortName_5, AllowAttachmentsEmail, DEX_ROW_ID FROM .CO00103 WHERE BusObjKey = @BusObjKey_RS AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey ASC, Attachment_ID ASC END ELSE BEGIN SELECT TOP 25  BusObjKey, Attachment_ID, DefaultAttachType, AttachAttributeDefault, AttributeShortName_1, AttributeShortName_2, AttributeShortName_3, AttributeShortName_4, AttributeShortName_5, AllowAttachmentsEmail, DEX_ROW_ID FROM .CO00103 WHERE BusObjKey BETWEEN @BusObjKey_RS AND @BusObjKey_RE AND Attachment_ID BETWEEN @Attachment_ID_RS AND @Attachment_ID_RE ORDER BY BusObjKey ASC, Attachment_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00103F_1] TO [DYNGRP]
GO
