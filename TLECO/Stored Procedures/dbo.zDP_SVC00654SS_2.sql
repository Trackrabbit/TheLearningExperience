SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654SS_2] (@PRICSHED char(11), @ITEMNMBR char(31), @CUSTCLAS char(15)) AS  set nocount on SELECT TOP 1  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED AND ITEMNMBR = @ITEMNMBR AND CUSTCLAS = @CUSTCLAS ORDER BY PRICSHED ASC, ITEMNMBR ASC, CUSTCLAS ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654SS_2] TO [DYNGRP]
GO
