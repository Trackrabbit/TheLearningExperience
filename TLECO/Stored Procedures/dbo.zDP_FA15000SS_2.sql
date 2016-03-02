SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA15000SS_2] (@POSTED tinyint) AS  set nocount on SELECT TOP 1  GLINTBTCHNUM, POSTED, GLINTTRXDATE, GL_Interface_Comment, GL_Intf_Begin_Period, GL_Interface_Begin_Year, GL_Interface_End_Period, GL_Interface_End_Year, SSRCEDOC, ENDSRCDC, Start_Asset_ID, End_Asset_ID, Start_Asset_ID_Suffix, End_Asset_ID_Suffix, STTCLSID, ENDCLSID, BOOKINDX, JRNENTRY, DEBITAMT, CRDTAMNT, USERID, DEX_ROW_ID FROM .FA15000 WHERE POSTED = @POSTED ORDER BY POSTED ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA15000SS_2] TO [DYNGRP]
GO