SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportSetupF_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, Report_URL, Next_Report_File_Name, XPRTFTYP, DEX_ROW_ID FROM .ReportSetup ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, Report_URL, Next_Report_File_Name, XPRTFTYP, DEX_ROW_ID FROM .ReportSetup WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, Report_URL, Next_Report_File_Name, XPRTFTYP, DEX_ROW_ID FROM .ReportSetup WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportSetupF_1] TO [DYNGRP]
GO
