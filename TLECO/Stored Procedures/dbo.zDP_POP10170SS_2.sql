SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10170SS_2] (@PMNTNMBR char(21), @PONUMBER char(17)) AS  set nocount on SELECT TOP 1  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE PMNTNMBR = @PMNTNMBR AND PONUMBER = @PONUMBER ORDER BY PMNTNMBR ASC, PONUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10170SS_2] TO [DYNGRP]
GO
