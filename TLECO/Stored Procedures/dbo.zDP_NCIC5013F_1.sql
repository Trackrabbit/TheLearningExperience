SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5013F_1] (@USERID_RS char(15), @JRNENTRY_RS int, @NC_Dest_IC_Company_DB_RS char(31), @NC_Dest_IC_Journal_Entry_RS int, @NC_Dest_IC_Sequence_RS int, @NC_Dest_IC_Account_Index_RS int, @USERID_RE char(15), @JRNENTRY_RE int, @NC_Dest_IC_Company_DB_RE char(31), @NC_Dest_IC_Journal_Entry_RE int, @NC_Dest_IC_Sequence_RE int, @NC_Dest_IC_Account_Index_RE int) AS /* 14.00.0084.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Dest_IC_Company_DB, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Sequence, NC_Dest_IC_Posted, NC_Dest_IC_Account_Numbe, NC_Dest_IC_Account_Index, CURRNIDX, TRXAMNT, DEX_ROW_ID FROM .NCIC5013 ORDER BY USERID ASC, JRNENTRY ASC, NC_Dest_IC_Company_DB ASC, NC_Dest_IC_Journal_Entry ASC, NC_Dest_IC_Sequence ASC, NC_Dest_IC_Account_Index ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Dest_IC_Company_DB, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Sequence, NC_Dest_IC_Posted, NC_Dest_IC_Account_Numbe, NC_Dest_IC_Account_Index, CURRNIDX, TRXAMNT, DEX_ROW_ID FROM .NCIC5013 WHERE USERID = @USERID_RS AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND NC_Dest_IC_Company_DB BETWEEN @NC_Dest_IC_Company_DB_RS AND @NC_Dest_IC_Company_DB_RE AND NC_Dest_IC_Journal_Entry BETWEEN @NC_Dest_IC_Journal_Entry_RS AND @NC_Dest_IC_Journal_Entry_RE AND NC_Dest_IC_Sequence BETWEEN @NC_Dest_IC_Sequence_RS AND @NC_Dest_IC_Sequence_RE AND NC_Dest_IC_Account_Index BETWEEN @NC_Dest_IC_Account_Index_RS AND @NC_Dest_IC_Account_Index_RE ORDER BY USERID ASC, JRNENTRY ASC, NC_Dest_IC_Company_DB ASC, NC_Dest_IC_Journal_Entry ASC, NC_Dest_IC_Sequence ASC, NC_Dest_IC_Account_Index ASC END ELSE BEGIN SELECT TOP 25  USERID, JRNENTRY, NC_Dest_IC_Company_DB, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Sequence, NC_Dest_IC_Posted, NC_Dest_IC_Account_Numbe, NC_Dest_IC_Account_Index, CURRNIDX, TRXAMNT, DEX_ROW_ID FROM .NCIC5013 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND NC_Dest_IC_Company_DB BETWEEN @NC_Dest_IC_Company_DB_RS AND @NC_Dest_IC_Company_DB_RE AND NC_Dest_IC_Journal_Entry BETWEEN @NC_Dest_IC_Journal_Entry_RS AND @NC_Dest_IC_Journal_Entry_RE AND NC_Dest_IC_Sequence BETWEEN @NC_Dest_IC_Sequence_RS AND @NC_Dest_IC_Sequence_RE AND NC_Dest_IC_Account_Index BETWEEN @NC_Dest_IC_Account_Index_RS AND @NC_Dest_IC_Account_Index_RE ORDER BY USERID ASC, JRNENTRY ASC, NC_Dest_IC_Company_DB ASC, NC_Dest_IC_Journal_Entry ASC, NC_Dest_IC_Sequence ASC, NC_Dest_IC_Account_Index ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013F_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013F_1] TO [public]
GO
