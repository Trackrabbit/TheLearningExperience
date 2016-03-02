SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30240SS_1] (@CALLNBR char(11), @SRVRECTYPE smallint, @SRVCCD char(11), @TASKCD char(11)) AS  set nocount on SELECT TOP 1  CALLNBR, SRVRECTYPE, SRVCCD, TASKCD, TASKREQ, TASKCOMP, TASKUSERID, TASKDATE, TASKTIME, TASKETTC, TASKATTC, TECHID, DEX_ROW_ID FROM .SVC30240 WHERE CALLNBR = @CALLNBR AND SRVRECTYPE = @SRVRECTYPE AND SRVCCD = @SRVCCD AND TASKCD = @TASKCD ORDER BY CALLNBR ASC, SRVRECTYPE ASC, SRVCCD ASC, TASKCD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30240SS_1] TO [DYNGRP]
GO
