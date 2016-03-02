SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06001SI] (@STATIONID char(11), @DSCRIPTN char(31), @LOCNCODE char(11), @ITEMNMBR char(31), @WORKDYS_1 tinyint, @WORKDYS_2 tinyint, @WORKDYS_3 tinyint, @WORKDYS_4 tinyint, @WORKDYS_5 tinyint, @WORKDYS_6 tinyint, @WORKDYS_7 tinyint, @WORKSTRT_1 datetime, @WORKSTRT_2 datetime, @WORKSTRT_3 datetime, @WORKSTRT_4 datetime, @WORKSTRT_5 datetime, @WORKSTRT_6 datetime, @WORKSTRT_7 datetime, @WORKEND_1 datetime, @WORKEND_2 datetime, @WORKEND_3 datetime, @WORKEND_4 datetime, @WORKEND_5 datetime, @WORKEND_6 datetime, @WORKEND_7 datetime, @PRETIME smallint, @POSTTIME smallint, @svcPostToPayroll tinyint, @PAYRCORD char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06001 (STATIONID, DSCRIPTN, LOCNCODE, ITEMNMBR, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, PRETIME, POSTTIME, svcPostToPayroll, PAYRCORD) VALUES ( @STATIONID, @DSCRIPTN, @LOCNCODE, @ITEMNMBR, @WORKDYS_1, @WORKDYS_2, @WORKDYS_3, @WORKDYS_4, @WORKDYS_5, @WORKDYS_6, @WORKDYS_7, @WORKSTRT_1, @WORKSTRT_2, @WORKSTRT_3, @WORKSTRT_4, @WORKSTRT_5, @WORKSTRT_6, @WORKSTRT_7, @WORKEND_1, @WORKEND_2, @WORKEND_3, @WORKEND_4, @WORKEND_5, @WORKEND_6, @WORKEND_7, @PRETIME, @POSTTIME, @svcPostToPayroll, @PAYRCORD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06001SI] TO [DYNGRP]
GO
