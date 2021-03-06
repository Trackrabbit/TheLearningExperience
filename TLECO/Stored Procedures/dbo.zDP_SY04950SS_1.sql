SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04950SS_1] (@PRODID smallint, @RTGRSBIN numeric(19,5), @RPRTNAME char(31)) AS  set nocount on SELECT TOP 1  PRODID, RTGRSBIN, Report_Option_Name, RPRTNAME, Email_Send_Attachments, EmailFileFormat, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress FROM .SY04950 WHERE PRODID = @PRODID AND RTGRSBIN = @RTGRSBIN AND RPRTNAME = @RPRTNAME ORDER BY PRODID ASC, RTGRSBIN ASC, RPRTNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04950SS_1] TO [DYNGRP]
GO
