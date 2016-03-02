SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA_MapSS_1] (@MASTERDB char(15), @REPLICATE_TO_DB char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MASTERDB, REPLICATE_TO_DB, Accounts, Vendors, Customers, Items, Employees, UserDefined1, UserDefined2, UserDefinedString, DEX_ROW_ID FROM .TA_Map WHERE MASTERDB = @MASTERDB AND REPLICATE_TO_DB = @REPLICATE_TO_DB ORDER BY MASTERDB ASC, REPLICATE_TO_DB ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA_MapSS_1] TO [DYNGRP]
GO