SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654SS_3] (@PRICSHED char(11), @CUSTNMBR char(15), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE, DEX_ROW_ID FROM .SVC00654 WHERE PRICSHED = @PRICSHED AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR = @ITEMNMBR ORDER BY PRICSHED ASC, CUSTNMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654SS_3] TO [DYNGRP]
GO
