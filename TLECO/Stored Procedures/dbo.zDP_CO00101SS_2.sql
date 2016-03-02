SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00101SS_2] (@CRUSRID char(15), @CREATDDT datetime, @CREATETIME datetime) AS  set nocount on SELECT TOP 1  Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN, View_Attachment, Internal_Attachment, Deletable, Replaced_Attachment, AttachmentImage, AttachmentProductDetails, DEX_ROW_ID FROM .CO00101 WHERE CRUSRID = @CRUSRID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME ORDER BY CRUSRID ASC, CREATDDT ASC, CREATETIME ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00101SS_2] TO [DYNGRP]
GO
