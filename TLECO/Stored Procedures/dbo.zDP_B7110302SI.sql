SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110302SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Recognition_SOrigin smallint, @CREDIT_MEMO_DOC_NUM char(21), @APPLDAMT numeric(19,5), @DATE1 datetime, @USERID char(15), @BSSI_Processed tinyint, @BSSI_Comment char(51), @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7110302 (BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Recognition_SOrigin, @CREDIT_MEMO_DOC_NUM, @APPLDAMT, @DATE1, @USERID, @BSSI_Processed, @BSSI_Comment, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110302SI] TO [DYNGRP]
GO
