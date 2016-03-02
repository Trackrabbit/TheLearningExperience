SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00104SI] (@BusObjKey char(201), @Attachment_ID char(37), @AttachmentStatus char(17), @CREATDDT datetime, @CREATETIME datetime, @CRUSRID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00104 (BusObjKey, Attachment_ID, AttachmentStatus, CREATDDT, CREATETIME, CRUSRID) VALUES ( @BusObjKey, @Attachment_ID, @AttachmentStatus, @CREATDDT, @CREATETIME, @CRUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00104SI] TO [DYNGRP]
GO
