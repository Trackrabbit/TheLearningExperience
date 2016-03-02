SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110302SS_1] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @CREDIT_MEMO_DOC_NUM char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND CREDIT_MEMO_DOC_NUM = @CREDIT_MEMO_DOC_NUM ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, CREDIT_MEMO_DOC_NUM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110302SS_1] TO [DYNGRP]
GO
