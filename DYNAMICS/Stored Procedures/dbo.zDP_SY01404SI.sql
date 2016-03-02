SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01404SI] (@USERID char(15), @DICTID smallint, @CMPANYID smallint, @USRCLASS char(15), @REPORTID smallint, @VisibleTo smallint, @Report_Option_Name char(81), @USERNAME char(31), @Custom_Reminder_Option smallint, @Record_Filter smallint, @Number_of_Records int, @Column_Filter smallint, @TOTAL numeric(19,5), @Field_DictID smallint, @Field_ResID smallint, @DSPASCUE tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01404 (USERID, DICTID, CMPANYID, USRCLASS, REPORTID, VisibleTo, Report_Option_Name, USERNAME, Custom_Reminder_Option, Record_Filter, Number_of_Records, Column_Filter, TOTAL, Field_DictID, Field_ResID, DSPASCUE) VALUES ( @USERID, @DICTID, @CMPANYID, @USRCLASS, @REPORTID, @VisibleTo, @Report_Option_Name, @USERNAME, @Custom_Reminder_Option, @Record_Filter, @Number_of_Records, @Column_Filter, @TOTAL, @Field_DictID, @Field_ResID, @DSPASCUE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01404SI] TO [DYNGRP]
GO
