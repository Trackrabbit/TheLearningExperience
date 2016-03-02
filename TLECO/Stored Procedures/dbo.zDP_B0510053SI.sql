SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510053SI] (@MJW_Investment_Number char(21), @LNSEQNBR numeric(19,5), @VENDORID char(15), @BSSI_Units_Available numeric(19,5), @BSSI_LastRevaluationAmou numeric(19,5), @BSSI_LastRevaluationDate datetime, @BSSI_Gain tinyint, @USERID char(15), @JRNENTRY int, @BSSI_ExgMrkt char(31), @BSSI_Symbol char(31), @SEQCOUNT int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510053 (MJW_Investment_Number, LNSEQNBR, VENDORID, BSSI_Units_Available, BSSI_LastRevaluationAmou, BSSI_LastRevaluationDate, BSSI_Gain, USERID, JRNENTRY, BSSI_ExgMrkt, BSSI_Symbol, SEQCOUNT) VALUES ( @MJW_Investment_Number, @LNSEQNBR, @VENDORID, @BSSI_Units_Available, @BSSI_LastRevaluationAmou, @BSSI_LastRevaluationDate, @BSSI_Gain, @USERID, @JRNENTRY, @BSSI_ExgMrkt, @BSSI_Symbol, @SEQCOUNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510053SI] TO [DYNGRP]
GO
