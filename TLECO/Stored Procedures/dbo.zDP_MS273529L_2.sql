SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273529L_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 ORDER BY DEX_ROW_ID DESC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  NDS_Failure_Date, NDS_Failure_Time, NDS_SPID, NDS_Email_From, NDS_Email_To, NDS_Subject, NDS_iMsg, NDS_Hr, NDS_Failure_Source, NDS_Failure_Description1, NDS_Failure_Description2, NDS_Failure_Output1, NDS_Failure_Output2, NDS_Failure_Output3, NDS_Failure_Output4, NDS_Failure_Comment, DEX_ROW_ID FROM .MS273529 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273529L_2] TO [DYNGRP]
GO
