SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8009N_1] (@BS int, @SCHEDID char(9), @LNSEQNBR numeric(19,5), @SCHEDID_RS char(9), @LNSEQNBR_RS numeric(19,5), @SCHEDID_RE char(9), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @SCHEDID_RS IS NULL BEGIN SELECT TOP 25  SCHEDID, LNSEQNBR, FREQOFPM, QUANTITY, UOFM, SVC_Meter_Type, SVC_PM_Type, PMDTLID, DEX_ROW_ID FROM .SVC8009 WHERE ( SCHEDID = @SCHEDID AND LNSEQNBR > @LNSEQNBR OR SCHEDID > @SCHEDID ) ORDER BY SCHEDID ASC, LNSEQNBR ASC END ELSE IF @SCHEDID_RS = @SCHEDID_RE BEGIN SELECT TOP 25  SCHEDID, LNSEQNBR, FREQOFPM, QUANTITY, UOFM, SVC_Meter_Type, SVC_PM_Type, PMDTLID, DEX_ROW_ID FROM .SVC8009 WHERE SCHEDID = @SCHEDID_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( SCHEDID = @SCHEDID AND LNSEQNBR > @LNSEQNBR OR SCHEDID > @SCHEDID ) ORDER BY SCHEDID ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  SCHEDID, LNSEQNBR, FREQOFPM, QUANTITY, UOFM, SVC_Meter_Type, SVC_PM_Type, PMDTLID, DEX_ROW_ID FROM .SVC8009 WHERE SCHEDID BETWEEN @SCHEDID_RS AND @SCHEDID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( SCHEDID = @SCHEDID AND LNSEQNBR > @LNSEQNBR OR SCHEDID > @SCHEDID ) ORDER BY SCHEDID ASC, LNSEQNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8009N_1] TO [DYNGRP]
GO