SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40900SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, DocDelivTempPath, DocDelivEmailSubj, DocDelivFaxSubj, DocDelivStatusRecipient, DEX_ROW_ID, DocDelivEmailBodyText, DocDelivFaxCoverPgText FROM .POP40900 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40900SS_1] TO [DYNGRP]
GO
