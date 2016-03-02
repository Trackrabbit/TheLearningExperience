SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10170N_2] (@BS int, @PMNTNMBR char(21), @PONUMBER char(17), @PMNTNMBR_RS char(21), @PONUMBER_RS char(17), @PMNTNMBR_RE char(21), @PONUMBER_RE char(17)) AS  set nocount on IF @PMNTNMBR_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE ( PMNTNMBR = @PMNTNMBR AND PONUMBER > @PONUMBER OR PMNTNMBR > @PMNTNMBR ) ORDER BY PMNTNMBR ASC, PONUMBER ASC END ELSE IF @PMNTNMBR_RS = @PMNTNMBR_RE BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE PMNTNMBR = @PMNTNMBR_RS AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( PMNTNMBR = @PMNTNMBR AND PONUMBER > @PONUMBER OR PMNTNMBR > @PMNTNMBR ) ORDER BY PMNTNMBR ASC, PONUMBER ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( PMNTNMBR = @PMNTNMBR AND PONUMBER > @PONUMBER OR PMNTNMBR > @PMNTNMBR ) ORDER BY PMNTNMBR ASC, PONUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10170N_2] TO [DYNGRP]
GO