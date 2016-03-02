SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90300F_3] (@PRODID_RS smallint, @Series_Number_RS smallint, @Data_Connection_ID_RS char(15), @PRODID_RE smallint, @Series_Number_RE smallint, @Data_Connection_ID_RE char(15)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 ORDER BY PRODID ASC, Series_Number ASC, Data_Connection_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE PRODID = @PRODID_RS AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND Data_Connection_ID BETWEEN @Data_Connection_ID_RS AND @Data_Connection_ID_RE ORDER BY PRODID ASC, Series_Number ASC, Data_Connection_ID ASC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, Data_Connection_Name, SQL_View, PRODID, Series_Number, DEX_ROW_ID FROM .ERB90300 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND Data_Connection_ID BETWEEN @Data_Connection_ID_RS AND @Data_Connection_ID_RE ORDER BY PRODID ASC, Series_Number ASC, Data_Connection_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90300F_3] TO [DYNGRP]
GO
