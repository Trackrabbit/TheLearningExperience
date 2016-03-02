SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00200N_1] (@BS int, @ASSETINDEX int, @BOOKINDX int, @ASSETINDEX_RS int, @BOOKINDX_RS int, @ASSETINDEX_RE int, @BOOKINDX_RE int) AS  set nocount on IF @ASSETINDEX_RS IS NULL BEGIN SELECT TOP 25  ASSETINDEX, BOOKINDX, PLINSERVDATE, DELETEDATE, DEPRBEGDATE, FULLYDEPRFLAG, FULLYDEPRDATE, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, REMAININGLIFEYEARS, REMAININGLIFEDAYS, DEPRTODATE, LASTRECALCDATE, LASTRECALCDATEFISYR, BEGINYEARCOST, BAGINSALVAGE, BEGINRESERVE, COSTBASIS, SALVAGEVALUE, DEPRECIATIONMETHOD, AVERAGINGCONV, SWITCHOVER, SWITCHFM1METHOD, SWITCHFM1AMOUNT, SWITCHFM1DATE, DLYDEPRRATE, PERDEPRRATE, YRLYDEPRRATE, SAVEDLYDEPRRATE, SAVEPERDEPRRATE, SAVEYRLYDEPRRATE, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, CURRUNDEPRAMT, PREVRUNDEPRAMT, YTDDEPRAMT, LTDDEPRAMT, NETBOOKVALUE, LUXAUTOIND, PRORATEDRETDATE, DEPRTODATEBFRET, RECGAINLOSS, NONRECGAINLOSS, STLINEDEPRATRET, COSTBFRETORDEL, Initial_Allowance_Perc, Initial_Allowance_Amount, SPECDEPRALLOW, SPECDEPRALLOWPCT, SPECDEPRALLOWAMT, NOTEINDX, DATEADDED, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA00200 WHERE ( ASSETINDEX = @ASSETINDEX AND BOOKINDX > @BOOKINDX OR ASSETINDEX > @ASSETINDEX ) ORDER BY ASSETINDEX ASC, BOOKINDX ASC END ELSE IF @ASSETINDEX_RS = @ASSETINDEX_RE BEGIN SELECT TOP 25  ASSETINDEX, BOOKINDX, PLINSERVDATE, DELETEDATE, DEPRBEGDATE, FULLYDEPRFLAG, FULLYDEPRDATE, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, REMAININGLIFEYEARS, REMAININGLIFEDAYS, DEPRTODATE, LASTRECALCDATE, LASTRECALCDATEFISYR, BEGINYEARCOST, BAGINSALVAGE, BEGINRESERVE, COSTBASIS, SALVAGEVALUE, DEPRECIATIONMETHOD, AVERAGINGCONV, SWITCHOVER, SWITCHFM1METHOD, SWITCHFM1AMOUNT, SWITCHFM1DATE, DLYDEPRRATE, PERDEPRRATE, YRLYDEPRRATE, SAVEDLYDEPRRATE, SAVEPERDEPRRATE, SAVEYRLYDEPRRATE, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, CURRUNDEPRAMT, PREVRUNDEPRAMT, YTDDEPRAMT, LTDDEPRAMT, NETBOOKVALUE, LUXAUTOIND, PRORATEDRETDATE, DEPRTODATEBFRET, RECGAINLOSS, NONRECGAINLOSS, STLINEDEPRATRET, COSTBFRETORDEL, Initial_Allowance_Perc, Initial_Allowance_Amount, SPECDEPRALLOW, SPECDEPRALLOWPCT, SPECDEPRALLOWAMT, NOTEINDX, DATEADDED, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA00200 WHERE ASSETINDEX = @ASSETINDEX_RS AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND ( ASSETINDEX = @ASSETINDEX AND BOOKINDX > @BOOKINDX OR ASSETINDEX > @ASSETINDEX ) ORDER BY ASSETINDEX ASC, BOOKINDX ASC END ELSE BEGIN SELECT TOP 25  ASSETINDEX, BOOKINDX, PLINSERVDATE, DELETEDATE, DEPRBEGDATE, FULLYDEPRFLAG, FULLYDEPRDATE, ORIGINALLIFEYEARS, ORIGINALLIFEDAYS, REMAININGLIFEYEARS, REMAININGLIFEDAYS, DEPRTODATE, LASTRECALCDATE, LASTRECALCDATEFISYR, BEGINYEARCOST, BAGINSALVAGE, BEGINRESERVE, COSTBASIS, SALVAGEVALUE, DEPRECIATIONMETHOD, AVERAGINGCONV, SWITCHOVER, SWITCHFM1METHOD, SWITCHFM1AMOUNT, SWITCHFM1DATE, DLYDEPRRATE, PERDEPRRATE, YRLYDEPRRATE, SAVEDLYDEPRRATE, SAVEPERDEPRRATE, SAVEYRLYDEPRRATE, AMORTIZATIONCODE, AMORTIZATIONAMOUNT, CURRUNDEPRAMT, PREVRUNDEPRAMT, YTDDEPRAMT, LTDDEPRAMT, NETBOOKVALUE, LUXAUTOIND, PRORATEDRETDATE, DEPRTODATEBFRET, RECGAINLOSS, NONRECGAINLOSS, STLINEDEPRATRET, COSTBFRETORDEL, Initial_Allowance_Perc, Initial_Allowance_Amount, SPECDEPRALLOW, SPECDEPRALLOWPCT, SPECDEPRALLOWAMT, NOTEINDX, DATEADDED, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, LUXVANTRUCK, LUXELAUTO, DEX_ROW_ID FROM .FA00200 WHERE ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND ( ASSETINDEX = @ASSETINDEX AND BOOKINDX > @BOOKINDX OR ASSETINDEX > @ASSETINDEX ) ORDER BY ASSETINDEX ASC, BOOKINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00200N_1] TO [DYNGRP]
GO