SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04900SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, EmailAllowEmbedding, EmailAllowAttachments, EmailAllowDocXAttach, EmailAllowHTMLAttach, EmailAllowPDFAttach, EmailAllowXPSAttach, DEX_ROW_ID FROM .SY04900 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04900SS_1] TO [DYNGRP]
GO
