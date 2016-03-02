SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510053SS_2] (@MJW_Investment_Number char(21), @SEQCOUNT int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, LNSEQNBR, VENDORID, BSSI_Units_Available, BSSI_LastRevaluationAmou, BSSI_LastRevaluationDate, BSSI_Gain, USERID, JRNENTRY, BSSI_ExgMrkt, BSSI_Symbol, SEQCOUNT, DEX_ROW_ID FROM .B0510053 WHERE MJW_Investment_Number = @MJW_Investment_Number AND SEQCOUNT = @SEQCOUNT ORDER BY MJW_Investment_Number ASC, SEQCOUNT ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510053SS_2] TO [DYNGRP]
GO
