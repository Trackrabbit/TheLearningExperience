SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRINJ022N_2] (@BS int, @EMPID_I char(15), @INJURYNUMBER_I char(11), @ISERIALNUMBER_I char(15), @DEX_ROW_ID int, @EMPID_I_RS char(15), @INJURYNUMBER_I_RS char(11), @ISERIALNUMBER_I_RS char(15), @EMPID_I_RE char(15), @INJURYNUMBER_I_RE char(11), @ISERIALNUMBER_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  INJURYNUMBER_I, ISERIALNUMBER_I, EMPID_I, CLINICCOSTS_I, DOCTORCOSTS_I, MEDICATIONCOSTS_I, OTHERCOSTS_I, TESTCOSTS_I, THERAPYCOSTS_I, TOTALCOSTS_I, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, IDATE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRINJ022 WHERE ( EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I = @ISERIALNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I > @ISERIALNUMBER_I OR EMPID_I = @EMPID_I AND INJURYNUMBER_I > @INJURYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, INJURYNUMBER_I ASC, ISERIALNUMBER_I ASC, DEX_ROW_ID ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  INJURYNUMBER_I, ISERIALNUMBER_I, EMPID_I, CLINICCOSTS_I, DOCTORCOSTS_I, MEDICATIONCOSTS_I, OTHERCOSTS_I, TESTCOSTS_I, THERAPYCOSTS_I, TOTALCOSTS_I, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, IDATE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRINJ022 WHERE EMPID_I = @EMPID_I_RS AND INJURYNUMBER_I BETWEEN @INJURYNUMBER_I_RS AND @INJURYNUMBER_I_RE AND ISERIALNUMBER_I BETWEEN @ISERIALNUMBER_I_RS AND @ISERIALNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I = @ISERIALNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I > @ISERIALNUMBER_I OR EMPID_I = @EMPID_I AND INJURYNUMBER_I > @INJURYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, INJURYNUMBER_I ASC, ISERIALNUMBER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  INJURYNUMBER_I, ISERIALNUMBER_I, EMPID_I, CLINICCOSTS_I, DOCTORCOSTS_I, MEDICATIONCOSTS_I, OTHERCOSTS_I, TESTCOSTS_I, THERAPYCOSTS_I, TOTALCOSTS_I, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, IDATE_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRINJ022 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND INJURYNUMBER_I BETWEEN @INJURYNUMBER_I_RS AND @INJURYNUMBER_I_RE AND ISERIALNUMBER_I BETWEEN @ISERIALNUMBER_I_RS AND @ISERIALNUMBER_I_RE AND ( EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I = @ISERIALNUMBER_I AND DEX_ROW_ID > @DEX_ROW_ID OR EMPID_I = @EMPID_I AND INJURYNUMBER_I = @INJURYNUMBER_I AND ISERIALNUMBER_I > @ISERIALNUMBER_I OR EMPID_I = @EMPID_I AND INJURYNUMBER_I > @INJURYNUMBER_I OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, INJURYNUMBER_I ASC, ISERIALNUMBER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRINJ022N_2] TO [DYNGRP]
GO
