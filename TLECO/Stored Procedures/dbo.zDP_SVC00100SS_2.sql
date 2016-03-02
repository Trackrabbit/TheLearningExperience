SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00100SS_2] (@NAME char(31)) AS  set nocount on SELECT TOP 1  TECHID, NAME, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE, MANAGER, OFFID, PHONE1, PHONE2, PAGER1, PIN1, PAGER2, PIN2, TECHEMAIL, TECHEMAIL2, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, DTEHIRE, DTETERM, TECHSTAT, LOCNCODE, LOCCODEB, NOTEINDX, PRCLEVEL, IVRPassword, IVROptions, IVRLoginDate, IVRPassDate, IVRAccess, IVRGreet, ADDRESS3, COUNTRY, SVC_ItemSiteDelta, SVC_LastCommDate, VENDORID, EMPLOYID, DEX_ROW_ID FROM .SVC00100 WHERE NAME = @NAME ORDER BY NAME ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00100SS_2] TO [DYNGRP]
GO
