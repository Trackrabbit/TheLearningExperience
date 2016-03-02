SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11600F_2] (@Excel_Report_ID_RS char(15), @Table_Number_RS smallint, @Field_Number_RS smallint, @Excel_Report_ID_RE char(15), @Table_Number_RE smallint, @Field_Number_RE smallint) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Summary_Field, Summary_Order, Summary_Method, DEX_ROW_ID FROM .ERB11600 ORDER BY Excel_Report_ID ASC, Table_Number ASC, Field_Number ASC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Summary_Field, Summary_Order, Summary_Method, DEX_ROW_ID FROM .ERB11600 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE ORDER BY Excel_Report_ID ASC, Table_Number ASC, Field_Number ASC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Summary_Field, Summary_Order, Summary_Method, DEX_ROW_ID FROM .ERB11600 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE ORDER BY Excel_Report_ID ASC, Table_Number ASC, Field_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11600F_2] TO [DYNGRP]
GO
