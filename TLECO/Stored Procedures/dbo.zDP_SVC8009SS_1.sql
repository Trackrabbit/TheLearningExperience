SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC8009SS_1] (@SCHEDID char(9), @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  SCHEDID, LNSEQNBR, FREQOFPM, QUANTITY, UOFM, SVC_Meter_Type, SVC_PM_Type, PMDTLID, DEX_ROW_ID FROM .SVC8009 WHERE SCHEDID = @SCHEDID AND LNSEQNBR = @LNSEQNBR ORDER BY SCHEDID ASC, LNSEQNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC8009SS_1] TO [DYNGRP]
GO