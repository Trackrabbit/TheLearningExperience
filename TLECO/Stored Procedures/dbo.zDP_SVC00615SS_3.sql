SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00615SS_3] (@USERID char(15), @MKDTOPST tinyint, @CONSTS smallint, @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15), @CONTNBR char(11)) AS  set nocount on SELECT TOP 1  USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00615 WHERE USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code AND CONTNBR = @CONTNBR ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, Bill_To_Customer ASC, SVC_Bill_To_Address_Code ASC, CONTNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00615SS_3] TO [DYNGRP]
GO
