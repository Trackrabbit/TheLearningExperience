SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654UN_5] (@BS int, @PRICSHED char(11), @CUSTCLAS char(15), @PRICSHED_RS char(11), @CUSTCLAS_RS char(15), @PRICSHED_RE char(11), @CUSTCLAS_RE char(15)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE ( PRICSHED = @PRICSHED AND CUSTCLAS > @CUSTCLAS OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED_RS AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ( PRICSHED = @PRICSHED AND CUSTCLAS > @CUSTCLAS OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ( PRICSHED = @PRICSHED AND CUSTCLAS > @CUSTCLAS OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654UN_5] TO [DYNGRP]
GO