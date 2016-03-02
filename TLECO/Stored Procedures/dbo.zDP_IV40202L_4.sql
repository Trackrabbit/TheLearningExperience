SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40202L_4] (@UOMSCHDL_RS char(11), @QTYBSUOM_RS numeric(19,5), @UOFM_RS char(9), @EQUIVUOM_RS char(9), @UOMSCHDL_RE char(11), @QTYBSUOM_RE numeric(19,5), @UOFM_RE char(9), @EQUIVUOM_RE char(9)) AS  set nocount on IF @UOMSCHDL_RS IS NULL BEGIN SELECT TOP 25  UOMSCHDL, UOFM, SEQNUMBR, EQUIVUOM, EQUOMQTY, QTYBSUOM, UOFMLONGDESC, DEX_ROW_TS, DEX_ROW_ID FROM .IV40202 ORDER BY UOMSCHDL DESC, QTYBSUOM DESC, UOFM DESC, EQUIVUOM DESC END ELSE IF @UOMSCHDL_RS = @UOMSCHDL_RE BEGIN SELECT TOP 25  UOMSCHDL, UOFM, SEQNUMBR, EQUIVUOM, EQUOMQTY, QTYBSUOM, UOFMLONGDESC, DEX_ROW_TS, DEX_ROW_ID FROM .IV40202 WHERE UOMSCHDL = @UOMSCHDL_RS AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND EQUIVUOM BETWEEN @EQUIVUOM_RS AND @EQUIVUOM_RE ORDER BY UOMSCHDL DESC, QTYBSUOM DESC, UOFM DESC, EQUIVUOM DESC END ELSE BEGIN SELECT TOP 25  UOMSCHDL, UOFM, SEQNUMBR, EQUIVUOM, EQUOMQTY, QTYBSUOM, UOFMLONGDESC, DEX_ROW_TS, DEX_ROW_ID FROM .IV40202 WHERE UOMSCHDL BETWEEN @UOMSCHDL_RS AND @UOMSCHDL_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND EQUIVUOM BETWEEN @EQUIVUOM_RS AND @EQUIVUOM_RE ORDER BY UOMSCHDL DESC, QTYBSUOM DESC, UOFM DESC, EQUIVUOM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40202L_4] TO [DYNGRP]
GO
