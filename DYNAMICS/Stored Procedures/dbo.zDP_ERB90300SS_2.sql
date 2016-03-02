SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300SS_2] (@Data_Connection_Name char(65)) AS set nocount on SELECT TOP 1  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE Data_Connection_Name = @Data_Connection_Name ORDER BY Data_Connection_Name ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300SS_2] TO [DYNGRP]
GO
