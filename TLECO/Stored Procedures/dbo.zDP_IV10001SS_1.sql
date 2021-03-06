SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10001SS_1] (@IVDOCTYP smallint, @IVDOCNBR char(17), @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  IVDOCNBR, IVDOCTYP, ITEMNMBR, LNSEQNBR, UOFM, QTYBSUOM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, IVWLNMSG, DECPLCUR, DECPLQTY, USAGETYPE, Reason_Code, DEX_ROW_ID FROM .IV10001 WHERE IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR ORDER BY IVDOCTYP ASC, IVDOCNBR ASC, LNSEQNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10001SS_1] TO [DYNGRP]
GO
