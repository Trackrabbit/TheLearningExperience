SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportSetupSS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, Report_URL, Next_Report_File_Name, XPRTFTYP, DEX_ROW_ID FROM .ReportSetup WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportSetupSS_1] TO [DYNGRP]
GO
