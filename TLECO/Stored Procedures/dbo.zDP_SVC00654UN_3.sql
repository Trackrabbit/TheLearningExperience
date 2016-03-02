SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654UN_3] (@BS int, @PRICSHED char(11), @CUSTNMBR char(15), @ITEMNMBR char(31), @PRICSHED_RS char(11), @CUSTNMBR_RS char(15), @ITEMNMBR_RS char(31), @PRICSHED_RE char(11), @CUSTNMBR_RE char(15), @ITEMNMBR_RE char(31)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE ( PRICSHED = @PRICSHED AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR > @ITEMNMBR OR PRICSHED = @PRICSHED AND CUSTNMBR > @CUSTNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( PRICSHED = @PRICSHED AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR > @ITEMNMBR OR PRICSHED = @PRICSHED AND CUSTNMBR > @CUSTNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( PRICSHED = @PRICSHED AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR > @ITEMNMBR OR PRICSHED = @PRICSHED AND CUSTNMBR > @CUSTNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654UN_3] TO [DYNGRP]
GO
