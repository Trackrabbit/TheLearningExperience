SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00103SS_1] (@BusObjKey char(201), @Attachment_ID char(37)) AS  set nocount on SELECT TOP 1  BusObjKey, Attachment_ID, DefaultAttachType, AttachAttributeDefault, AttributeShortName_1, AttributeShortName_2, AttributeShortName_3, AttributeShortName_4, AttributeShortName_5, AllowAttachmentsEmail, DEX_ROW_ID FROM .CO00103 WHERE BusObjKey = @BusObjKey AND Attachment_ID = @Attachment_ID ORDER BY BusObjKey ASC, Attachment_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00103SS_1] TO [DYNGRP]
GO
