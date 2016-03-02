SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00103SI] (@BusObjKey char(201), @Attachment_ID char(37), @DefaultAttachType smallint, @AttachAttributeDefault smallint, @AttributeShortName_1 char(25), @AttributeShortName_2 char(25), @AttributeShortName_3 char(25), @AttributeShortName_4 char(25), @AttributeShortName_5 char(25), @AllowAttachmentsEmail tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00103 (BusObjKey, Attachment_ID, DefaultAttachType, AttachAttributeDefault, AttributeShortName_1, AttributeShortName_2, AttributeShortName_3, AttributeShortName_4, AttributeShortName_5, AllowAttachmentsEmail) VALUES ( @BusObjKey, @Attachment_ID, @DefaultAttachType, @AttachAttributeDefault, @AttributeShortName_1, @AttributeShortName_2, @AttributeShortName_3, @AttributeShortName_4, @AttributeShortName_5, @AllowAttachmentsEmail) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00103SI] TO [DYNGRP]
GO
