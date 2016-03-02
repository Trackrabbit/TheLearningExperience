SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00651SS_1] (@PRICSHED char(11), @ITMCLSCD char(11), @CUSTCLAS char(15), @ITEMNMBR char(31), @CUSTNMBR char(15), @OPTTYPE char(11)) AS  set nocount on SELECT TOP 1  UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED, DEX_ROW_ID FROM .SVC00651 WHERE PRICSHED = @PRICSHED AND ITMCLSCD = @ITMCLSCD AND CUSTCLAS = @CUSTCLAS AND ITEMNMBR = @ITEMNMBR AND CUSTNMBR = @CUSTNMBR AND OPTTYPE = @OPTTYPE ORDER BY PRICSHED ASC, ITMCLSCD ASC, CUSTCLAS ASC, ITEMNMBR ASC, CUSTNMBR ASC, OPTTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00651SS_1] TO [DYNGRP]
GO