SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400004SI] (@USERID char(15), @FILENAME char(45), @PP_Error_Check_Link smallint, @PP_Document_Number char(21), @PP_Profile_Name char(21), @ERMSGTXT char(255), @ERMSGTX2 char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP400004 (USERID, FILENAME, PP_Error_Check_Link, PP_Document_Number, PP_Profile_Name, ERMSGTXT, ERMSGTX2) VALUES ( @USERID, @FILENAME, @PP_Error_Check_Link, @PP_Document_Number, @PP_Profile_Name, @ERMSGTXT, @ERMSGTX2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400004SI] TO [DYNGRP]
GO
