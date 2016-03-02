SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO40100SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, Enable_Feature, View_Attachment, Internal_Attachment, Allow_Removal, Flow_From_Item, Flow_From_Vendor, Flow_From_Customer, Scan_Location, Delete_After_Attach, EmailSetFileSize, EmailMaxFileSize, AllowToDelete, DeletePassword, Attribute_1, Attribute_2, Attribute_3, Attribute_4, Attribute_5, AttachAttributeDefault, CustomerAttachmentType, ItemAttachmentType, VendorAttachmentType, AllowAttachmentsEmail, DEX_ROW_ID FROM .CO40100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO40100SS_1] TO [DYNGRP]
GO
