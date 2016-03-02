SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM10101L_1] (@depositnumber_RS char(21), @CHEKBKID_RS char(15), @CURNCYID_RS char(15), @depositnumber_RE char(21), @CHEKBKID_RE char(15), @CURNCYID_RE char(15)) AS  set nocount on IF @depositnumber_RS IS NULL BEGIN SELECT TOP 25  depositnumber, CHEKBKID, CURNCYID, CMRECNUM, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, DECPLCUR, RCPTCOUNT, ORCHKTTL, Originating_Check_Count, Orig_Credit_Card_Total, Originating_Credit_Card_, Originating_Cash_Total, Originating_Cash_Count, Originating_Coin_Amount, Originating_Deposit_Amou, Originating_Checkbook_Am, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10101 ORDER BY depositnumber DESC, CHEKBKID DESC, CURNCYID DESC END ELSE IF @depositnumber_RS = @depositnumber_RE BEGIN SELECT TOP 25  depositnumber, CHEKBKID, CURNCYID, CMRECNUM, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, DECPLCUR, RCPTCOUNT, ORCHKTTL, Originating_Check_Count, Orig_Credit_Card_Total, Originating_Credit_Card_, Originating_Cash_Total, Originating_Cash_Count, Originating_Coin_Amount, Originating_Deposit_Amou, Originating_Checkbook_Am, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10101 WHERE depositnumber = @depositnumber_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY depositnumber DESC, CHEKBKID DESC, CURNCYID DESC END ELSE BEGIN SELECT TOP 25  depositnumber, CHEKBKID, CURNCYID, CMRECNUM, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, DECPLCUR, RCPTCOUNT, ORCHKTTL, Originating_Check_Count, Orig_Credit_Card_Total, Originating_Credit_Card_, Originating_Cash_Total, Originating_Cash_Count, Originating_Coin_Amount, Originating_Deposit_Amou, Originating_Checkbook_Am, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM10101 WHERE depositnumber BETWEEN @depositnumber_RS AND @depositnumber_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY depositnumber DESC, CHEKBKID DESC, CURNCYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM10101L_1] TO [DYNGRP]
GO