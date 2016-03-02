SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510053L_1] (@MJW_Investment_Number_RS char(21), @LNSEQNBR_RS numeric(19,5), @MJW_Investment_Number_RE char(21), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investment_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, LNSEQNBR, VENDORID, BSSI_Units_Available, BSSI_LastRevaluationAmou, BSSI_LastRevaluationDate, BSSI_Gain, USERID, JRNENTRY, BSSI_ExgMrkt, BSSI_Symbol, SEQCOUNT, DEX_ROW_ID FROM .B0510053 ORDER BY MJW_Investment_Number DESC, LNSEQNBR DESC END ELSE IF @MJW_Investment_Number_RS = @MJW_Investment_Number_RE BEGIN SELECT TOP 25  MJW_Investment_Number, LNSEQNBR, VENDORID, BSSI_Units_Available, BSSI_LastRevaluationAmou, BSSI_LastRevaluationDate, BSSI_Gain, USERID, JRNENTRY, BSSI_ExgMrkt, BSSI_Symbol, SEQCOUNT, DEX_ROW_ID FROM .B0510053 WHERE MJW_Investment_Number = @MJW_Investment_Number_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY MJW_Investment_Number DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, LNSEQNBR, VENDORID, BSSI_Units_Available, BSSI_LastRevaluationAmou, BSSI_LastRevaluationDate, BSSI_Gain, USERID, JRNENTRY, BSSI_ExgMrkt, BSSI_Symbol, SEQCOUNT, DEX_ROW_ID FROM .B0510053 WHERE MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY MJW_Investment_Number DESC, LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510053L_1] TO [DYNGRP]
GO
