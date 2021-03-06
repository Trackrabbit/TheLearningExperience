SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11700N_1] (@BS int, @Excel_Report_ID char(15), @CMPANYID smallint, @Excel_Report_ID_RS char(15), @CMPANYID_RS smallint, @Excel_Report_ID_RE char(15), @CMPANYID_RE smallint) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, CMPANYID, DEX_ROW_ID FROM .ERB11700 WHERE ( Excel_Report_ID = @Excel_Report_ID AND CMPANYID > @CMPANYID OR Excel_Report_ID > @Excel_Report_ID ) ORDER BY Excel_Report_ID ASC, CMPANYID ASC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, CMPANYID, DEX_ROW_ID FROM .ERB11700 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( Excel_Report_ID = @Excel_Report_ID AND CMPANYID > @CMPANYID OR Excel_Report_ID > @Excel_Report_ID ) ORDER BY Excel_Report_ID ASC, CMPANYID ASC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, CMPANYID, DEX_ROW_ID FROM .ERB11700 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( Excel_Report_ID = @Excel_Report_ID AND CMPANYID > @CMPANYID OR Excel_Report_ID > @Excel_Report_ID ) ORDER BY Excel_Report_ID ASC, CMPANYID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11700N_1] TO [DYNGRP]
GO
