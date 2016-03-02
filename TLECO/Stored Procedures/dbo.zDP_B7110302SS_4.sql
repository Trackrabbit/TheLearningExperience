SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110302SS_4] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @BSSI_Processed tinyint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Processed = @BSSI_Processed ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, BSSI_Processed ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110302SS_4] TO [DYNGRP]
GO
