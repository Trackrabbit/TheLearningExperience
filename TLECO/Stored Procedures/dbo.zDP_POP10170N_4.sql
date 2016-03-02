SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10170N_4] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @PONUMBER char(17), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @PONUMBER_RS char(17), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @PONUMBER_RE char(17)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, PONUMBER ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, PONUMBER ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, PMNTNMBR, PrepaymentSource, PYENTTYP, PrepaymentAmount, OriginatingPrepaymentAmt, APPLDAMT, ORAPPAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, CHEKBKID, CARDNAME, CHEKNMBR, DOCNUMBR, CNTRLTYP, PrepaymentAccountIndex, Cash_Account_Index, PAY_ACCT_IDX, GLPOSTDT, BACHNUMB, BCHSOURC, TRXSORCE, PSTGSTUS, VOIDED, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP10170 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, PONUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10170N_4] TO [DYNGRP]
GO