SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12100F_2] (@Group_Report_ID_RS char(15), @Excel_Report_ID_RS char(15), @Group_Report_ID_RE char(15), @Excel_Report_ID_RE char(15)) AS set nocount on IF @Group_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Group_Report_ID, LNITMSEQ, Excel_Report_ID, DEX_ROW_ID FROM .ERB12100 ORDER BY Group_Report_ID ASC, Excel_Report_ID ASC END ELSE IF @Group_Report_ID_RS = @Group_Report_ID_RE BEGIN SELECT TOP 25  Group_Report_ID, LNITMSEQ, Excel_Report_ID, DEX_ROW_ID FROM .ERB12100 WHERE Group_Report_ID = @Group_Report_ID_RS AND Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE ORDER BY Group_Report_ID ASC, Excel_Report_ID ASC END ELSE BEGIN SELECT TOP 25  Group_Report_ID, LNITMSEQ, Excel_Report_ID, DEX_ROW_ID FROM .ERB12100 WHERE Group_Report_ID BETWEEN @Group_Report_ID_RS AND @Group_Report_ID_RE AND Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE ORDER BY Group_Report_ID ASC, Excel_Report_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12100F_2] TO [DYNGRP]
GO
