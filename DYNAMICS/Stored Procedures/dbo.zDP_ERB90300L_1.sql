SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300L_1] (@Data_Connection_ID_RS char(15), @Data_Connection_ID_RE char(15)) AS set nocount on IF @Data_Connection_ID_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 ORDER BY Data_Connection_ID DESC END ELSE IF @Data_Connection_ID_RS = @Data_Connection_ID_RE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE Data_Connection_ID = @Data_Connection_ID_RS ORDER BY Data_Connection_ID DESC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE Data_Connection_ID BETWEEN @Data_Connection_ID_RS AND @Data_Connection_ID_RE ORDER BY Data_Connection_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300L_1] TO [DYNGRP]
GO
