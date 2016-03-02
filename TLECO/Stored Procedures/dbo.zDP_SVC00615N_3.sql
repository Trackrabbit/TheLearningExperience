SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00615N_3] (@BS int, @USERID char(15), @MKDTOPST tinyint, @CONSTS smallint, @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15), @CONTNBR char(11), @USERID_RS char(15), @MKDTOPST_RS tinyint, @CONSTS_RS smallint, @Bill_To_Customer_RS char(15), @SVC_Bill_To_Address_Code_RS char(15), @CONTNBR_RS char(11), @USERID_RE char(15), @MKDTOPST_RE tinyint, @CONSTS_RE smallint, @Bill_To_Customer_RE char(15), @SVC_Bill_To_Address_Code_RE char(15), @CONTNBR_RE char(11)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00615 WHERE ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code AND CONTNBR > @CONTNBR OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code > @SVC_Bill_To_Address_Code OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer > @Bill_To_Customer OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS > @CONSTS OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, Bill_To_Customer ASC, SVC_Bill_To_Address_Code ASC, CONTNBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00615 WHERE USERID = @USERID_RS AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND Bill_To_Customer BETWEEN @Bill_To_Customer_RS AND @Bill_To_Customer_RE AND SVC_Bill_To_Address_Code BETWEEN @SVC_Bill_To_Address_Code_RS AND @SVC_Bill_To_Address_Code_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code AND CONTNBR > @CONTNBR OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code > @SVC_Bill_To_Address_Code OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer > @Bill_To_Customer OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS > @CONSTS OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, Bill_To_Customer ASC, SVC_Bill_To_Address_Code ASC, CONTNBR ASC END ELSE BEGIN SELECT TOP 25  USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00615 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND Bill_To_Customer BETWEEN @Bill_To_Customer_RS AND @Bill_To_Customer_RE AND SVC_Bill_To_Address_Code BETWEEN @SVC_Bill_To_Address_Code_RS AND @SVC_Bill_To_Address_Code_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code = @SVC_Bill_To_Address_Code AND CONTNBR > @CONTNBR OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer = @Bill_To_Customer AND SVC_Bill_To_Address_Code > @SVC_Bill_To_Address_Code OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS = @CONSTS AND Bill_To_Customer > @Bill_To_Customer OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND CONSTS > @CONSTS OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, CONSTS ASC, Bill_To_Customer ASC, SVC_Bill_To_Address_Code ASC, CONTNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00615N_3] TO [DYNGRP]
GO