SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01404SS_1] (@USERID char(15), @DICTID smallint, @CMPANYID smallint, @USRCLASS char(15), @REPORTID smallint, @VisibleTo smallint, @Report_Option_Name char(81), @USERNAME char(31)) AS  set nocount on SELECT TOP 1  USERID, DICTID, CMPANYID, USRCLASS, REPORTID, VisibleTo, Report_Option_Name, USERNAME, Custom_Reminder_Option, Record_Filter, Number_of_Records, Column_Filter, TOTAL, Field_DictID, Field_ResID, DSPASCUE, DEX_ROW_ID FROM .SY01404 WHERE USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME = @USERNAME ORDER BY USERID ASC, DICTID ASC, CMPANYID ASC, USRCLASS ASC, REPORTID ASC, VisibleTo ASC, Report_Option_Name ASC, USERNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01404SS_1] TO [DYNGRP]
GO
