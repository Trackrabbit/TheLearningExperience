SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00651UN_4] (@BS int, @PRICSHED char(11), @ITMCLSCD char(11), @CUSTNMBR char(15), @OPTTYPE char(11), @PRICSHED_RS char(11), @ITMCLSCD_RS char(11), @CUSTNMBR_RS char(15), @OPTTYPE_RS char(11), @PRICSHED_RE char(11), @ITMCLSCD_RE char(11), @CUSTNMBR_RE char(15), @OPTTYPE_RE char(11)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE ( PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR = @CUSTNMBR AND OPTTYPE > @OPTTYPE OR PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR > @CUSTNMBR OR PRICSHED = @PRICSHED AND ITMCLSCD > @ITMCLSCD OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITMCLSCD ASC, CUSTNMBR ASC, OPTTYPE ASC, DEX_ROW_ID ASC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE PRICSHED = @PRICSHED_RS AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE AND ( PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR = @CUSTNMBR AND OPTTYPE > @OPTTYPE OR PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR > @CUSTNMBR OR PRICSHED = @PRICSHED AND ITMCLSCD > @ITMCLSCD OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITMCLSCD ASC, CUSTNMBR ASC, OPTTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND OPTTYPE BETWEEN @OPTTYPE_RS AND @OPTTYPE_RE AND ( PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR = @CUSTNMBR AND OPTTYPE > @OPTTYPE OR PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTNMBR > @CUSTNMBR OR PRICSHED = @PRICSHED AND ITMCLSCD > @ITMCLSCD OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITMCLSCD ASC, CUSTNMBR ASC, OPTTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00651UN_4] TO [DYNGRP]
GO
