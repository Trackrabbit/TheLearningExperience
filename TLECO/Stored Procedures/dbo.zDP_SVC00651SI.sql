SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00651SI] (@UNITPRCT numeric(19,5), @Contract_Price_Percent smallint, @OPTTYPE char(11), @Contract_Cumulative_Pric tinyint, @ITMCLSCD char(11), @UNITPRCE numeric(19,5), @UNITCOST numeric(19,5), @ITEMNMBR char(31), @CUSTCLAS char(15), @CUSTNMBR char(15), @PRICSHED char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00651 (UNITPRCT, Contract_Price_Percent, OPTTYPE, Contract_Cumulative_Pric, ITMCLSCD, UNITPRCE, UNITCOST, ITEMNMBR, CUSTCLAS, CUSTNMBR, PRICSHED) VALUES ( @UNITPRCT, @Contract_Price_Percent, @OPTTYPE, @Contract_Cumulative_Pric, @ITMCLSCD, @UNITPRCE, @UNITCOST, @ITEMNMBR, @CUSTCLAS, @CUSTNMBR, @PRICSHED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00651SI] TO [DYNGRP]
GO
