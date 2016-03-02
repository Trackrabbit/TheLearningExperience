SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00103SS_1] (@CUSTNMBR char(15)) AS  set nocount on SELECT TOP 1  TNSFCLIF, NONSFLIF, CUSTNMBR, CUSTBLNC, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, LASTAGED, FRSTINDT, LSTNSFCD, LPYMTAMT, LASTPYDT, LSTTRXDT, LSTTRXAM, LSTFCHAM, UPFCHYTD, AVDTPLYR, AVDTPLIF, AVGDTPYR, NUMADTPL, NUMADTPY, NUMADTPR, TDTKNYTD, TDTKNLYR, TDTKNLTD, TDISAYTD, RETAINAG, TNSFCYTD, NONSFYTD, UNPSTDSA, UNPSTDCA, UNPSTOSA, UNPSTOCA, NCSCHPMT, TTLSLYTD, TTLSLLTD, TTLSLLYR, TCOSTYTD, TCOSTLTD, TCOSTLYR, TCSHRYTD, TCSHRLTD, TCSHRLYR, TFNCHYTD, TFNCHLTD, TFNCHLYR, FNCHCYTD, FNCHLYRC, TBDDTYTD, TBDDTLYR, TBDDTLTD, TWVFCYTD, TWVFCLTD, TWVFCLYR, TWROFYTD, TWROFLTD, TWROFLYR, TTLINYTD, TTLINLTD, TTLINLYR, TTLFCYTD, TTLFCLTD, TTLFCLYR, WROFSLIF, WROFSLYR, WROFSYTD, HIBALLYR, HIBALYTD, HIBALLTD, LASTSTDT, LSTSTAMT, DEPRECV, ONORDAMT, TTLRTYTD, TTLRTLTD, TTLRTLYR, DEX_ROW_ID FROM .RM00103 WHERE CUSTNMBR = @CUSTNMBR ORDER BY CUSTNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00103SS_1] TO [DYNGRP]
GO