SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00851L_1] (@ECO_Number_RS char(15), @RCRDTYPE_RS smallint, @LNITMSEQ_RS int, @ECO_Number_RE char(15), @RCRDTYPE_RE smallint, @LNITMSEQ_RE int) AS  set nocount on IF @ECO_Number_RS IS NULL BEGIN SELECT TOP 25  ECO_Number, LNITMSEQ, RCRDTYPE, ITEMNMBR, QUANTITY, UOFM, UOMSCHDL, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, DEX_ROW_ID FROM .SVC00851 ORDER BY ECO_Number DESC, RCRDTYPE DESC, LNITMSEQ DESC END ELSE IF @ECO_Number_RS = @ECO_Number_RE BEGIN SELECT TOP 25  ECO_Number, LNITMSEQ, RCRDTYPE, ITEMNMBR, QUANTITY, UOFM, UOMSCHDL, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, DEX_ROW_ID FROM .SVC00851 WHERE ECO_Number = @ECO_Number_RS AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY ECO_Number DESC, RCRDTYPE DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  ECO_Number, LNITMSEQ, RCRDTYPE, ITEMNMBR, QUANTITY, UOFM, UOMSCHDL, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, DEX_ROW_ID FROM .SVC00851 WHERE ECO_Number BETWEEN @ECO_Number_RS AND @ECO_Number_RE AND RCRDTYPE BETWEEN @RCRDTYPE_RS AND @RCRDTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY ECO_Number DESC, RCRDTYPE DESC, LNITMSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00851L_1] TO [DYNGRP]
GO