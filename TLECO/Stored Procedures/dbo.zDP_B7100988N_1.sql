SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100988N_1] (@BS int, @SEQNUMBR int, @USERID char(15), @SEQNUMBR_RS int, @USERID_RS char(15), @SEQNUMBR_RE int, @USERID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @SEQNUMBR_RS IS NULL BEGIN SELECT TOP 25  INTERID, DECPLACS, CURRNIDX, ICExchangeRateInfo_1, ICExchangeRateInfo_2, ICExchangeRateInfo_3, ICExchangeRateInfo_4, ICExchangeRateInfo_5, ICExchangeRateInfo_6, ICExchangeRateInfo_7, ICExchangeRateInfo_8, ICExchangeRateInfo_9, ICExchangeRateInfo_10, ICExchangeRateInfo_11, ICExchangeRateInfo_12, ICExchangeRateInfo_13, ICExchangeRateInfo_14, LNESTAT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTINDX, ACCTTYPE, DSCRIPTN, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, SEQNUMBR, USERID, DEX_ROW_ID FROM .B7100988 WHERE ( SEQNUMBR = @SEQNUMBR AND USERID > @USERID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, USERID ASC END ELSE IF @SEQNUMBR_RS = @SEQNUMBR_RE BEGIN SELECT TOP 25  INTERID, DECPLACS, CURRNIDX, ICExchangeRateInfo_1, ICExchangeRateInfo_2, ICExchangeRateInfo_3, ICExchangeRateInfo_4, ICExchangeRateInfo_5, ICExchangeRateInfo_6, ICExchangeRateInfo_7, ICExchangeRateInfo_8, ICExchangeRateInfo_9, ICExchangeRateInfo_10, ICExchangeRateInfo_11, ICExchangeRateInfo_12, ICExchangeRateInfo_13, ICExchangeRateInfo_14, LNESTAT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTINDX, ACCTTYPE, DSCRIPTN, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, SEQNUMBR, USERID, DEX_ROW_ID FROM .B7100988 WHERE SEQNUMBR = @SEQNUMBR_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( SEQNUMBR = @SEQNUMBR AND USERID > @USERID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  INTERID, DECPLACS, CURRNIDX, ICExchangeRateInfo_1, ICExchangeRateInfo_2, ICExchangeRateInfo_3, ICExchangeRateInfo_4, ICExchangeRateInfo_5, ICExchangeRateInfo_6, ICExchangeRateInfo_7, ICExchangeRateInfo_8, ICExchangeRateInfo_9, ICExchangeRateInfo_10, ICExchangeRateInfo_11, ICExchangeRateInfo_12, ICExchangeRateInfo_13, ICExchangeRateInfo_14, LNESTAT, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTINDX, ACCTTYPE, DSCRIPTN, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, SEQNUMBR, USERID, DEX_ROW_ID FROM .B7100988 WHERE SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( SEQNUMBR = @SEQNUMBR AND USERID > @USERID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, USERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100988N_1] TO [DYNGRP]
GO