SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300N_4] (@BS int, @SQL_View char(201), @SQL_View_RS char(201), @SQL_View_RE char(201)) AS set nocount on IF @SQL_View_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE ( SQL_View > @SQL_View ) ORDER BY SQL_View ASC END ELSE IF @SQL_View_RS = @SQL_View_RE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE SQL_View = @SQL_View_RS AND ( SQL_View > @SQL_View ) ORDER BY SQL_View ASC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE SQL_View BETWEEN @SQL_View_RS AND @SQL_View_RE AND ( SQL_View > @SQL_View ) ORDER BY SQL_View ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300N_4] TO [DYNGRP]
GO
