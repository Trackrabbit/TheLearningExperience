SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1500N_1] (@BS int, @NCTMPLID char(15), @NCTMPLID_RS char(15), @NCTMPLID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @NCTMPLID_RS IS NULL BEGIN SELECT TOP 25  NCTMPLID, DSCRIPTN, NCTPTrigASTR, NCTPSACCS, NCTPSICASTR, CMPANYID, NCTPDASTR, NCTPDICASTR, NCTEMPOP, NC_Reverse_MDA_CB, INTERID, NC_Copy_MDA_CB, NC_Intracompany, DEX_ROW_ID FROM .NCIC1500 WHERE ( NCTMPLID > @NCTMPLID ) ORDER BY NCTMPLID ASC END ELSE IF @NCTMPLID_RS = @NCTMPLID_RE BEGIN SELECT TOP 25  NCTMPLID, DSCRIPTN, NCTPTrigASTR, NCTPSACCS, NCTPSICASTR, CMPANYID, NCTPDASTR, NCTPDICASTR, NCTEMPOP, NC_Reverse_MDA_CB, INTERID, NC_Copy_MDA_CB, NC_Intracompany, DEX_ROW_ID FROM .NCIC1500 WHERE NCTMPLID = @NCTMPLID_RS AND ( NCTMPLID > @NCTMPLID ) ORDER BY NCTMPLID ASC END ELSE BEGIN SELECT TOP 25  NCTMPLID, DSCRIPTN, NCTPTrigASTR, NCTPSACCS, NCTPSICASTR, CMPANYID, NCTPDASTR, NCTPDICASTR, NCTEMPOP, NC_Reverse_MDA_CB, INTERID, NC_Copy_MDA_CB, NC_Intracompany, DEX_ROW_ID FROM .NCIC1500 WHERE NCTMPLID BETWEEN @NCTMPLID_RS AND @NCTMPLID_RE AND ( NCTMPLID > @NCTMPLID ) ORDER BY NCTMPLID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1500N_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1500N_1] TO [public]
GO
