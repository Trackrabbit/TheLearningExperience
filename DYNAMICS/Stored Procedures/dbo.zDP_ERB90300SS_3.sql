SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300SS_3] (@PRODID smallint, @Series_Number smallint, @Data_Connection_ID char(15)) AS set nocount on SELECT TOP 1  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND Data_Connection_ID = @Data_Connection_ID ORDER BY PRODID ASC, Series_Number ASC, Data_Connection_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300SS_3] TO [DYNGRP]
GO
