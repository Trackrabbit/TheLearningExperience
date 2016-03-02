SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00654SI] (@PRICSHED char(11), @ITMCLSCD char(11), @ITEMNMBR char(31), @CUSTCLAS char(15), @CUSTNMBR char(15), @UNITCOST numeric(19,5), @UNITPRCE numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00654 (PRICSHED, ITMCLSCD, ITEMNMBR, CUSTCLAS, CUSTNMBR, UNITCOST, UNITPRCE) VALUES ( @PRICSHED, @ITMCLSCD, @ITEMNMBR, @CUSTCLAS, @CUSTNMBR, @UNITCOST, @UNITPRCE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00654SI] TO [DYNGRP]
GO
