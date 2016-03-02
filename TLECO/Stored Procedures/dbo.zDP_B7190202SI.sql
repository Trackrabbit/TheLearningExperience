SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190202SI] (@JRNENTRY int, @ORTRXSRC char(13), @BSSI_Audit_Trail_Seq_Num numeric(19,5), @DOCDATE datetime, @ACTINDX int, @BSSI_Account_Number_1 char(5), @BSSI_Account_Number_2 char(5), @BSSI_Account_Number_3 char(3), @BSSI_Account_Number_4 char(3), @BSSI_IsCredit tinyint, @BSSI_Recognition_Amount numeric(19,5), @BSSI_Description char(51), @USERID char(15), @DATE1 datetime, @VOIDED tinyint, @BSSI_Reverse_JE int, @BSSI_Recognition_SOrigin smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7190202 (JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin) VALUES ( @JRNENTRY, @ORTRXSRC, @BSSI_Audit_Trail_Seq_Num, @DOCDATE, @ACTINDX, @BSSI_Account_Number_1, @BSSI_Account_Number_2, @BSSI_Account_Number_3, @BSSI_Account_Number_4, @BSSI_IsCredit, @BSSI_Recognition_Amount, @BSSI_Description, @USERID, @DATE1, @VOIDED, @BSSI_Reverse_JE, @BSSI_Recognition_SOrigin) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190202SI] TO [DYNGRP]
GO
