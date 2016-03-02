SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00615SS_1] (@USERID char(15), @CONSTS smallint, @MKDTOPST tinyint, @CONTNBR char(11), @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15)) AS  set nocount on SELECT TOP 1  USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00615 WHERE USERID = @USERID AND CONSTS = @CONSTS AND MKDTOPST = @MKDTOPST AND CONTNBR = @CONTNBR AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code ORDER BY USERID ASC, CONSTS ASC, MKDTOPST ASC, CONTNBR ASC, Bill_To_Customer ASC, SVC_Bill_To_Address_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00615SS_1] TO [DYNGRP]
GO
