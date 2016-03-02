SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00105SI] (@BusObjKey char(201), @DOCNUMBR char(21), @fileName char(255), @STRTDSCR char(51), @Attachment_ID char(37), @CREATDDT datetime, @CREATETIME datetime, @FileType char(13), @Size int, @EmailAllowAttachments tinyint, @ORD int, @DELETE1 tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00105 (BusObjKey, DOCNUMBR, fileName, STRTDSCR, Attachment_ID, CREATDDT, CREATETIME, FileType, Size, EmailAllowAttachments, ORD, DELETE1) VALUES ( @BusObjKey, @DOCNUMBR, @fileName, @STRTDSCR, @Attachment_ID, @CREATDDT, @CREATETIME, @FileType, @Size, @EmailAllowAttachments, @ORD, @DELETE1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00105SI] TO [DYNGRP]
GO
