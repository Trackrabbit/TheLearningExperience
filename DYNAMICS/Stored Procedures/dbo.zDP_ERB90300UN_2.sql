SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300UN_2] (@BS int, @Data_Connection_Name char(65), @Data_Connection_Name_RS char(65), @Data_Connection_Name_RE char(65)) AS set nocount on IF @Data_Connection_Name_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE ( Data_Connection_Name > @Data_Connection_Name ) ORDER BY Data_Connection_Name ASC, DEX_ROW_ID ASC END ELSE IF @Data_Connection_Name_RS = @Data_Connection_Name_RE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE Data_Connection_Name = @Data_Connection_Name_RS AND ( Data_Connection_Name > @Data_Connection_Name ) ORDER BY Data_Connection_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE Data_Connection_Name BETWEEN @Data_Connection_Name_RS AND @Data_Connection_Name_RE AND ( Data_Connection_Name > @Data_Connection_Name ) ORDER BY Data_Connection_Name ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300UN_2] TO [DYNGRP]
GO
