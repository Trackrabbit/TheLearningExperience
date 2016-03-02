SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400004SS_1] (@USERID char(15), @FILENAME char(45), @PP_Error_Check_Link smallint, @PP_Document_Number char(21), @PP_Profile_Name char(21)) AS  set nocount on SELECT TOP 1  USERID, FILENAME, PP_Error_Check_Link, PP_Document_Number, PP_Profile_Name, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .PP400004 WHERE USERID = @USERID AND FILENAME = @FILENAME AND PP_Error_Check_Link = @PP_Error_Check_Link AND PP_Document_Number = @PP_Document_Number AND PP_Profile_Name = @PP_Profile_Name ORDER BY USERID ASC, FILENAME ASC, PP_Error_Check_Link ASC, PP_Document_Number ASC, PP_Profile_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400004SS_1] TO [DYNGRP]
GO
