SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIV02SS_2] (@DIVISION_I char(31)) AS  set nocount on SELECT TOP 1  COMPANYCODE_I, DIVISIONCODE_I, DIVISION_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, PHONE10_I, EXT_I, FAXNUMBERI_I, EMAILADDRESS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2DIV02 WHERE DIVISION_I = @DIVISION_I ORDER BY DIVISION_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIV02SS_2] TO [DYNGRP]
GO
