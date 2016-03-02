SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400004SD] (@USERID char(15), @FILENAME char(45), @PP_Error_Check_Link smallint, @PP_Document_Number char(21), @PP_Profile_Name char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PP400004 WHERE USERID = @USERID AND FILENAME = @FILENAME AND PP_Error_Check_Link = @PP_Error_Check_Link AND PP_Document_Number = @PP_Document_Number AND PP_Profile_Name = @PP_Profile_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PP400004 WHERE USERID = @USERID AND FILENAME = @FILENAME AND PP_Error_Check_Link = @PP_Error_Check_Link AND PP_Document_Number = @PP_Document_Number AND PP_Profile_Name = @PP_Profile_Name SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400004SD] TO [DYNGRP]
GO
