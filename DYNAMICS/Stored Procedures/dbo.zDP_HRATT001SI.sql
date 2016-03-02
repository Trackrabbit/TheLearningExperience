SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRATT001SI] (@Attachment_ID char(37), @fileName char(255), @Attachment_Description char(255), @CRUSRID char(15), @CREATDDT datetime, @CREATETIME datetime, @ODESCTN char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRATT001 (Attachment_ID, fileName, Attachment_Description, CRUSRID, CREATDDT, CREATETIME, ODESCTN) VALUES ( @Attachment_ID, @fileName, @Attachment_Description, @CRUSRID, @CREATDDT, @CREATETIME, @ODESCTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRATT001SI] TO [DYNGRP]
GO
