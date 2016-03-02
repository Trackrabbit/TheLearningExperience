SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTER062F_1] (@EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, IDATE_I, OPINION_I, JOBSATISFACTION_I, TRAINING_I, PROMOTION_I, WAGESCALE_I, COMPANYBENIFITS_I, WORKERS_I, ORGANIZE_I, LEADER_I, FEEDBACK_I, CRITICISM_I, CONDITIONS_I, IHOURSWORKED_I, CHNGIMPROVEMNTS_I, NEWJOB_I, CONFIDENTIAL_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRTER062 ORDER BY EMPID_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, IDATE_I, OPINION_I, JOBSATISFACTION_I, TRAINING_I, PROMOTION_I, WAGESCALE_I, COMPANYBENIFITS_I, WORKERS_I, ORGANIZE_I, LEADER_I, FEEDBACK_I, CRITICISM_I, CONDITIONS_I, IHOURSWORKED_I, CHNGIMPROVEMNTS_I, NEWJOB_I, CONFIDENTIAL_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRTER062 WHERE EMPID_I = @EMPID_I_RS ORDER BY EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, IDATE_I, OPINION_I, JOBSATISFACTION_I, TRAINING_I, PROMOTION_I, WAGESCALE_I, COMPANYBENIFITS_I, WORKERS_I, ORGANIZE_I, LEADER_I, FEEDBACK_I, CRITICISM_I, CONDITIONS_I, IHOURSWORKED_I, CHNGIMPROVEMNTS_I, NEWJOB_I, CONFIDENTIAL_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRTER062 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTER062F_1] TO [DYNGRP]
GO
