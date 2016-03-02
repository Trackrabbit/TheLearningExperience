SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01404N_1] (@BS int, @USERID char(15), @DICTID smallint, @CMPANYID smallint, @USRCLASS char(15), @REPORTID smallint, @VisibleTo smallint, @Report_Option_Name char(81), @USERNAME char(31), @USERID_RS char(15), @DICTID_RS smallint, @CMPANYID_RS smallint, @USRCLASS_RS char(15), @REPORTID_RS smallint, @VisibleTo_RS smallint, @Report_Option_Name_RS char(81), @USERNAME_RS char(31), @USERID_RE char(15), @DICTID_RE smallint, @CMPANYID_RE smallint, @USRCLASS_RE char(15), @REPORTID_RE smallint, @VisibleTo_RE smallint, @Report_Option_Name_RE char(81), @USERNAME_RE char(31)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, DICTID, CMPANYID, USRCLASS, REPORTID, VisibleTo, Report_Option_Name, USERNAME, Custom_Reminder_Option, Record_Filter, Number_of_Records, Column_Filter, TOTAL, Field_DictID, Field_ResID, DSPASCUE, DEX_ROW_ID FROM .SY01404 WHERE ( USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME > @USERNAME OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name > @Report_Option_Name OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo > @VisibleTo OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID > @REPORTID OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS > @USRCLASS OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID > @CMPANYID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, CMPANYID ASC, USRCLASS ASC, REPORTID ASC, VisibleTo ASC, Report_Option_Name ASC, USERNAME ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, DICTID, CMPANYID, USRCLASS, REPORTID, VisibleTo, Report_Option_Name, USERNAME, Custom_Reminder_Option, Record_Filter, Number_of_Records, Column_Filter, TOTAL, Field_DictID, Field_ResID, DSPASCUE, DEX_ROW_ID FROM .SY01404 WHERE USERID = @USERID_RS AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND VisibleTo BETWEEN @VisibleTo_RS AND @VisibleTo_RE AND Report_Option_Name BETWEEN @Report_Option_Name_RS AND @Report_Option_Name_RE AND USERNAME BETWEEN @USERNAME_RS AND @USERNAME_RE AND ( USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME > @USERNAME OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name > @Report_Option_Name OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo > @VisibleTo OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID > @REPORTID OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS > @USRCLASS OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID > @CMPANYID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, CMPANYID ASC, USRCLASS ASC, REPORTID ASC, VisibleTo ASC, Report_Option_Name ASC, USERNAME ASC END ELSE BEGIN SELECT TOP 25  USERID, DICTID, CMPANYID, USRCLASS, REPORTID, VisibleTo, Report_Option_Name, USERNAME, Custom_Reminder_Option, Record_Filter, Number_of_Records, Column_Filter, TOTAL, Field_DictID, Field_ResID, DSPASCUE, DEX_ROW_ID FROM .SY01404 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND VisibleTo BETWEEN @VisibleTo_RS AND @VisibleTo_RE AND Report_Option_Name BETWEEN @Report_Option_Name_RS AND @Report_Option_Name_RE AND USERNAME BETWEEN @USERNAME_RS AND @USERNAME_RE AND ( USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name = @Report_Option_Name AND USERNAME > @USERNAME OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo = @VisibleTo AND Report_Option_Name > @Report_Option_Name OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID = @REPORTID AND VisibleTo > @VisibleTo OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS = @USRCLASS AND REPORTID > @REPORTID OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID = @CMPANYID AND USRCLASS > @USRCLASS OR USERID = @USERID AND DICTID = @DICTID AND CMPANYID > @CMPANYID OR USERID = @USERID AND DICTID > @DICTID OR USERID > @USERID ) ORDER BY USERID ASC, DICTID ASC, CMPANYID ASC, USRCLASS ASC, REPORTID ASC, VisibleTo ASC, Report_Option_Name ASC, USERNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01404N_1] TO [DYNGRP]
GO