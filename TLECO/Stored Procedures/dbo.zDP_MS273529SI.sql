SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273529SI] (@NDS_Failure_Date datetime, @NDS_Failure_Time datetime, @NDS_SPID smallint, @NDS_Email_From char(101), @NDS_Email_To char(101), @NDS_Subject char(101), @NDS_iMsg int, @NDS_Hr int, @NDS_Failure_Source char(255), @NDS_Failure_Description1 char(255), @NDS_Failure_Description2 char(255), @NDS_Failure_Output1 char(255), @NDS_Failure_Output2 char(255), @NDS_Failure_Output3 char(255), @NDS_Failure_Output4 char(255), @NDS_Failure_Comment char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273529 (NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment) VALUES ( @NDS_Failure_Date, @NDS_Failure_Time, @NDS_SPID, @NDS_Email_From, @NDS_Email_To, @NDS_Subject, @NDS_iMsg, @NDS_Hr, @NDS_Failure_Source, @NDS_Failure_Description1, @NDS_Failure_Description2, @NDS_Failure_Output1, @NDS_Failure_Output2, @NDS_Failure_Output3, @NDS_Failure_Output4, @NDS_Failure_Comment) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273529SI] TO [DYNGRP]
GO
