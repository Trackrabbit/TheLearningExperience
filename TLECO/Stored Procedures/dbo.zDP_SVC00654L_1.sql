SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654L_1] (@PRICSHED_RS char(11), @ITMCLSCD_RS char(11), @CUSTCLAS_RS char(15), @ITEMNMBR_RS char(31), @CUSTNMBR_RS char(15), @PRICSHED_RE char(11), @ITMCLSCD_RE char(11), @CUSTCLAS_RE char(15), @ITEMNMBR_RE char(31), @CUSTNMBR_RE char(15)) AS  set nocount on IF @PRICSHED_RS IS NULL BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTCLAS DESC, ITEMNMBR DESC, CUSTNMBR DESC END ELSE IF @PRICSHED_RS = @PRICSHED_RE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED_RS AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTCLAS DESC, ITEMNMBR DESC, CUSTNMBR DESC END ELSE BEGIN SELECT TOP 25  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED BETWEEN @PRICSHED_RS AND @PRICSHED_RE AND ITMCLSCD BETWEEN @ITMCLSCD_RS AND @ITMCLSCD_RE AND CUSTCLAS BETWEEN @CUSTCLAS_RS AND @CUSTCLAS_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY PRICSHED DESC, ITMCLSCD DESC, CUSTCLAS DESC, ITEMNMBR DESC, CUSTNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654L_1] TO [DYNGRP]
GO