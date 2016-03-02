SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA_MapSI] (@MASTERDB char(15), @REPLICATE_TO_DB char(15), @Accounts smallint, @Vendors smallint, @Customers smallint, @Items smallint, @Employees smallint, @UserDefined1 smallint, @UserDefined2 smallint, @UserDefinedString char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .TA_Map (MASTERDB, REPLICATE_TO_DB, Accounts, Vendors, Customers, Items, Employees, UserDefined1, UserDefined2, UserDefinedString) VALUES ( @MASTERDB, @REPLICATE_TO_DB, @Accounts, @Vendors, @Customers, @Items, @Employees, @UserDefined1, @UserDefined2, @UserDefinedString) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA_MapSI] TO [DYNGRP]
GO
