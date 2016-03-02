SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTER062SI] (@EMPID_I char(15), @IDATE_I datetime, @OPINION_I smallint, @JOBSATISFACTION_I smallint, @TRAINING_I smallint, @PROMOTION_I smallint, @WAGESCALE_I smallint, @COMPANYBENIFITS_I smallint, @WORKERS_I smallint, @ORGANIZE_I smallint, @LEADER_I smallint, @FEEDBACK_I smallint, @CRITICISM_I smallint, @CONDITIONS_I smallint, @IHOURSWORKED_I smallint, @CHNGIMPROVEMNTS_I char(81), @NEWJOB_I char(81), @CONFIDENTIAL_I tinyint, @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRTER062 (EMPID_I, IDATE_I, OPINION_I, JOBSATISFACTION_I, TRAINING_I, PROMOTION_I, WAGESCALE_I, COMPANYBENIFITS_I, WORKERS_I, ORGANIZE_I, LEADER_I, FEEDBACK_I, CRITICISM_I, CONDITIONS_I, IHOURSWORKED_I, CHNGIMPROVEMNTS_I, NEWJOB_I, CONFIDENTIAL_I, NOTESINDEX_I) VALUES ( @EMPID_I, @IDATE_I, @OPINION_I, @JOBSATISFACTION_I, @TRAINING_I, @PROMOTION_I, @WAGESCALE_I, @COMPANYBENIFITS_I, @WORKERS_I, @ORGANIZE_I, @LEADER_I, @FEEDBACK_I, @CRITICISM_I, @CONDITIONS_I, @IHOURSWORKED_I, @CHNGIMPROVEMNTS_I, @NEWJOB_I, @CONFIDENTIAL_I, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTER062SI] TO [DYNGRP]
GO
