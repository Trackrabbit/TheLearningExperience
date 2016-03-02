SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportSetupSI] (@SETUPKEY smallint, @Report_URL char(255), @Next_Report_File_Name char(21), @XPRTFTYP smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ReportSetup (SETUPKEY, Report_URL, Next_Report_File_Name, XPRTFTYP) VALUES ( @SETUPKEY, @Report_URL, @Next_Report_File_Name, @XPRTFTYP) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportSetupSI] TO [DYNGRP]
GO
