SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20201SS_1] (@depositnumber char(21), @CHEKBKID char(15), @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  depositnumber, CHEKBKID, CURNCYID, Void, CMRECNUM, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, EXPNDATE, DECPLCUR, RCPTCOUNT, ORCHKTTL, Originating_Check_Count, Orig_Credit_Card_Total, Originating_Credit_Card_, Originating_Cash_Total, Originating_Cash_Count, Originating_Coin_Amount, Originating_Deposit_Amou, Originating_Checkbook_Am, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .CM20201 WHERE depositnumber = @depositnumber AND CHEKBKID = @CHEKBKID AND CURNCYID = @CURNCYID ORDER BY depositnumber ASC, CHEKBKID ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20201SS_1] TO [DYNGRP]
GO
