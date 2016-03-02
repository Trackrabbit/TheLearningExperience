SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240463N_2] (@BS int, @Queue_ID smallint, @CHEKBKID char(15), @BACHNUMB char(15), @USERID char(15), @INDXLONG int, @Category_Name char(51), @MEFIELDNAME char(61), @SEQNUMBR int, @Queue_ID_RS smallint, @CHEKBKID_RS char(15), @BACHNUMB_RS char(15), @USERID_RS char(15), @INDXLONG_RS int, @Category_Name_RS char(51), @MEFIELDNAME_RS char(61), @SEQNUMBR_RS int, @Queue_ID_RE smallint, @CHEKBKID_RE char(15), @BACHNUMB_RE char(15), @USERID_RE char(15), @INDXLONG_RE int, @Category_Name_RE char(51), @MEFIELDNAME_RE char(61), @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @Queue_ID_RS IS NULL BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, INDXLONG, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, DEX_ROW_ID FROM .ME240463 WHERE ( Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME = @MEFIELDNAME AND SEQNUMBR > @SEQNUMBR OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME > @MEFIELDNAME OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name > @Category_Name OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG > @INDXLONG OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID > @USERID OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB > @BACHNUMB OR Queue_ID = @Queue_ID AND CHEKBKID > @CHEKBKID OR Queue_ID > @Queue_ID ) ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, INDXLONG ASC, Category_Name ASC, MEFIELDNAME ASC, SEQNUMBR ASC END ELSE IF @Queue_ID_RS = @Queue_ID_RE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, INDXLONG, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, DEX_ROW_ID FROM .ME240463 WHERE Queue_ID = @Queue_ID_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND Category_Name BETWEEN @Category_Name_RS AND @Category_Name_RE AND MEFIELDNAME BETWEEN @MEFIELDNAME_RS AND @MEFIELDNAME_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME = @MEFIELDNAME AND SEQNUMBR > @SEQNUMBR OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME > @MEFIELDNAME OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name > @Category_Name OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG > @INDXLONG OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID > @USERID OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB > @BACHNUMB OR Queue_ID = @Queue_ID AND CHEKBKID > @CHEKBKID OR Queue_ID > @Queue_ID ) ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, INDXLONG ASC, Category_Name ASC, MEFIELDNAME ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, INDXLONG, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, DEX_ROW_ID FROM .ME240463 WHERE Queue_ID BETWEEN @Queue_ID_RS AND @Queue_ID_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND Category_Name BETWEEN @Category_Name_RS AND @Category_Name_RE AND MEFIELDNAME BETWEEN @MEFIELDNAME_RS AND @MEFIELDNAME_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME = @MEFIELDNAME AND SEQNUMBR > @SEQNUMBR OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name = @Category_Name AND MEFIELDNAME > @MEFIELDNAME OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG = @INDXLONG AND Category_Name > @Category_Name OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID = @USERID AND INDXLONG > @INDXLONG OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB = @BACHNUMB AND USERID > @USERID OR Queue_ID = @Queue_ID AND CHEKBKID = @CHEKBKID AND BACHNUMB > @BACHNUMB OR Queue_ID = @Queue_ID AND CHEKBKID > @CHEKBKID OR Queue_ID > @Queue_ID ) ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, INDXLONG ASC, Category_Name ASC, MEFIELDNAME ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240463N_2] TO [DYNGRP]
GO
