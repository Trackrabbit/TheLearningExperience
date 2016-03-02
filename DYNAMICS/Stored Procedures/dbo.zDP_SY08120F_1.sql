SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08120F_1] (@USERID_RS char(15), @SectionID_RS smallint, @SubSectionID_RS smallint, @DICTID_RS smallint, @USERID_RE char(15), @SectionID_RE smallint, @SubSectionID_RE smallint, @DICTID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined, DEX_ROW_ID FROM .SY08120 ORDER BY USERID ASC, SectionID ASC, SubSectionID ASC, DICTID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined, DEX_ROW_ID FROM .SY08120 WHERE USERID = @USERID_RS AND SectionID BETWEEN @SectionID_RS AND @SectionID_RE AND SubSectionID BETWEEN @SubSectionID_RS AND @SubSectionID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE ORDER BY USERID ASC, SectionID ASC, SubSectionID ASC, DICTID ASC END ELSE BEGIN SELECT TOP 25  USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined, DEX_ROW_ID FROM .SY08120 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SectionID BETWEEN @SectionID_RS AND @SectionID_RE AND SubSectionID BETWEEN @SubSectionID_RS AND @SubSectionID_RE AND DICTID BETWEEN @DICTID_RS AND @DICTID_RE ORDER BY USERID ASC, SectionID ASC, SubSectionID ASC, DICTID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08120F_1] TO [DYNGRP]
GO