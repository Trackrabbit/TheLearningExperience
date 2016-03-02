SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04900SI] (@SETUPKEY smallint, @EmailAllowEmbedding tinyint, @EmailAllowAttachments tinyint, @EmailAllowDocXAttach tinyint, @EmailAllowHTMLAttach tinyint, @EmailAllowPDFAttach tinyint, @EmailAllowXPSAttach tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04900 (SETUPKEY, EmailAllowEmbedding, EmailAllowAttachments, EmailAllowDocXAttach, EmailAllowHTMLAttach, EmailAllowPDFAttach, EmailAllowXPSAttach) VALUES ( @SETUPKEY, @EmailAllowEmbedding, @EmailAllowAttachments, @EmailAllowDocXAttach, @EmailAllowHTMLAttach, @EmailAllowPDFAttach, @EmailAllowXPSAttach) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04900SI] TO [DYNGRP]
GO
