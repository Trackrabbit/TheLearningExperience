SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_TS_OfficeHours]  (  @OfficeID char(11)  ) As SELECT  STRTDATE , STRTTIME,  ENDDATE, ENDTME,  Service_Flag,  CONTFLAG,  DSCRIPTN FROM SVC00903 where SVC00903.OFFID = @OfficeID  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_OfficeHours] TO [DYNGRP]
GO
