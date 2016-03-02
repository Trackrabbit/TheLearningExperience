SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2REQ01SS_1] (@REQUISITIONNUMBER_I int) AS  set nocount on SELECT TOP 1  REQUISITIONNUMBER_I, REQSTATUS_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, MANAGER_I, SUPERVISORCODE_I, STRTDATE, ENDDATE, OPENINGDATE_I, RECRUITER_I, RECRUITMENT_I, ADVERTISINGLIST_I_1, ADVERTISINGLIST_I_2, ADVERTISINGLIST_I_3, ADVERTISINGLIST_I_4, ADVERTISINGLIST_I_5, POSITIONSAVAILABLE_I, POSITIONSFILLED_I, APPLICANTSAPPLIED_I, APPSINTERVIEWED_I, ADVERTISINGCOSTS_I, RECRUITERSFEES_I, TRAVELCOSTS_I, LODGINGCOSTS_I, MOVINGEXPENSES_I, OTHERCOSTS_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .HR2REQ01 WHERE REQUISITIONNUMBER_I = @REQUISITIONNUMBER_I ORDER BY REQUISITIONNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2REQ01SS_1] TO [DYNGRP]
GO
