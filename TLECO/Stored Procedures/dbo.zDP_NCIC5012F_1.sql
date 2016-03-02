SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5012F_1] (@USERID_RS char(15), @JRNENTRY_RS int, @NC_Source_IC_Journal_Ent_RS int, @NC_Source_IC_Sequence_RS int, @USERID_RE char(15), @JRNENTRY_RE int, @NC_Source_IC_Journal_Ent_RE int, @NC_Source_IC_Sequence_RE int) AS /* 14.00.0084.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Source_IC_Journal_Ent, NC_Source_IC_Sequence, NC_Source_IC_Posted, NC_Source_IC_Account_Ind, TRXAMNT, DEX_ROW_ID FROM .NCIC5012 ORDER BY USERID ASC, JRNENTRY ASC, NC_Source_IC_Journal_Ent ASC, NC_Source_IC_Sequence ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Source_IC_Journal_Ent, NC_Source_IC_Sequence, NC_Source_IC_Posted, NC_Source_IC_Account_Ind, TRXAMNT, DEX_ROW_ID FROM .NCIC5012 WHERE USERID = @USERID_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND NC_Source_IC_Journal_Ent BETWEEN @NC_Source_IC_Journal_Ent_RS AND @NC_Source_IC_Journal_Ent_RE AND NC_Source_IC_Sequence BETWEEN @NC_Source_IC_Sequence_RS AND @NC_Source_IC_Sequence_RE ORDER BY USERID ASC, JRNENTRY ASC, NC_Source_IC_Journal_Ent ASC, NC_Source_IC_Sequence ASC END ELSE BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Source_IC_Journal_Ent, NC_Source_IC_Sequence, NC_Source_IC_Posted, NC_Source_IC_Account_Ind, TRXAMNT, DEX_ROW_ID FROM .NCIC5012 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND NC_Source_IC_Journal_Ent BETWEEN @NC_Source_IC_Journal_Ent_RS AND @NC_Source_IC_Journal_Ent_RE AND NC_Source_IC_Sequence BETWEEN @NC_Source_IC_Sequence_RS AND @NC_Source_IC_Sequence_RE ORDER BY USERID ASC, JRNENTRY ASC, NC_Source_IC_Journal_Ent ASC, NC_Source_IC_Sequence ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012F_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012F_1] TO [public]
GO
