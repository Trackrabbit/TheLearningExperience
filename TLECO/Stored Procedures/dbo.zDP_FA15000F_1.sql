SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA15000F_1] (@GLINTBTCHNUM_RS char(15), @GLINTBTCHNUM_RE char(15)) AS  set nocount on IF @GLINTBTCHNUM_RS IS NULL BEGIN SELECT TOP 25  GLINTBTCHNUM, POSTED, GLINTTRXDATE, GL_Interface_Comment, GL_Intf_Begin_Period, GL_Interface_Begin_Year, GL_Interface_End_Period, GL_Interface_End_Year, SSRCEDOC, ENDSRCDC, Start_Asset_ID, End_Asset_ID, Start_Asset_ID_Suffix, End_Asset_ID_Suffix, STTCLSID, ENDCLSID, BOOKINDX, JRNENTRY, DEBITAMT, CRDTAMNT, USERID, DEX_ROW_ID FROM .FA15000 ORDER BY GLINTBTCHNUM ASC END ELSE IF @GLINTBTCHNUM_RS = @GLINTBTCHNUM_RE BEGIN SELECT TOP 25  GLINTBTCHNUM, POSTED, GLINTTRXDATE, GL_Interface_Comment, GL_Intf_Begin_Period, GL_Interface_Begin_Year, GL_Interface_End_Period, GL_Interface_End_Year, SSRCEDOC, ENDSRCDC, Start_Asset_ID, End_Asset_ID, Start_Asset_ID_Suffix, End_Asset_ID_Suffix, STTCLSID, ENDCLSID, BOOKINDX, JRNENTRY, DEBITAMT, CRDTAMNT, USERID, DEX_ROW_ID FROM .FA15000 WHERE GLINTBTCHNUM = @GLINTBTCHNUM_RS ORDER BY GLINTBTCHNUM ASC END ELSE BEGIN SELECT TOP 25  GLINTBTCHNUM, POSTED, GLINTTRXDATE, GL_Interface_Comment, GL_Intf_Begin_Period, GL_Interface_Begin_Year, GL_Interface_End_Period, GL_Interface_End_Year, SSRCEDOC, ENDSRCDC, Start_Asset_ID, End_Asset_ID, Start_Asset_ID_Suffix, End_Asset_ID_Suffix, STTCLSID, ENDCLSID, BOOKINDX, JRNENTRY, DEBITAMT, CRDTAMNT, USERID, DEX_ROW_ID FROM .FA15000 WHERE GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE ORDER BY GLINTBTCHNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA15000F_1] TO [DYNGRP]
GO