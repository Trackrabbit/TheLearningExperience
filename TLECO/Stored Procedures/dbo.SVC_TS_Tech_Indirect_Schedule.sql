SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_TS_Tech_Indirect_Schedule] AS SELECT SVC00203.TECHID,   SVC00203.STRTDATE AS STARTDATE,   CONVERT(char(5),  SVC00203.STRTTIME, 108) AS STARTTIME,  SVC00203.ENDDATE AS ENDDATE,   CONVERT(char(5),  SVC00203.ENDTME, 108) AS ENDTIME,  SVC00203.Work_Type,   ISNULL(SVC00930.DSCRIPTN, '') 'DSCRIPTN',   SVC00203.ITEMDESC, 0 AS Tech_Available FROM SVC00203 LEFT OUTER JOIN  SVC00930 ON   SVC00203.Work_Type = SVC00930.Work_Type WHERE (SVC00203.SRVRECTYPE = 0) ORDER BY SVC00203.TECHID   
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_Tech_Indirect_Schedule] TO [DYNGRP]
GO