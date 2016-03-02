SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654N_2] (@BS int, @PRICSHED char(11), @ITEMNMBR char(31), @CUSTCLAS char(15), @DEX_ROW_ID int, @PRICSHED_RS char(11), @ITEMNMBR_RS char(31), @CUSTCLAS_RS char(15), @PRICSHED_RE char(11), @ITEMNMBR_RE char(31), @CUSTCLAS_RE char(15)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE ( PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS = @CUSTCLAS AND DEX_ROW_ID > @DEX_ROW_ID OR PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS > @CUSTCLAS OR PRICSHED = @PRICSHED AND ITEMNMBR > @ITEMNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITEMNMBR ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ( PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS = @CUSTCLAS AND DEX_ROW_ID > @DEX_ROW_ID OR PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS > @CUSTCLAS OR PRICSHED = @PRICSHED AND ITEMNMBR > @ITEMNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITEMNMBR ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ( PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS = @CUSTCLAS AND DEX_ROW_ID > @DEX_ROW_ID OR PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS > @CUSTCLAS OR PRICSHED = @PRICSHED AND ITEMNMBR > @ITEMNMBR OR PRICSHED > @PRICSHED ) ORDER BY PRICSHED ASC, ITEMNMBR ASC, CUSTCLAS ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654N_2] TO [DYNGRP]
GO
