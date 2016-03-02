SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00651L_4] (@PRICSHED_RS char(11), @ITMCLSCD_RS char(11), @CUSTNMBR_RS char(15), @OPTTYPE_RS char(11), @PRICSHED_RE char(11), @ITMCLSCD_RE char(11), @CUSTNMBR_RE char(15), @OPTTYPE_RE char(11)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTNMBR DESC, OPTTYPE DESC, DEX_ROW_ID DESC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE PRICSHED = @PRICSHED_RS AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTNMBR DESC, OPTTYPE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTNMBR DESC, OPTTYPE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00651L_4] TO [DYNGRP]
GO
