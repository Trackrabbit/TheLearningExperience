SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08120SS_1] (@USERID char(15), @SectionID smallint, @SubSectionID smallint, @DICTID smallint) AS  set nocount on SELECT TOP 1  USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined, DEX_ROW_ID FROM .SY08120 WHERE USERID = @USERID AND SectionID = @SectionID AND SubSectionID = @SubSectionID AND DICTID = @DICTID ORDER BY USERID ASC, SectionID ASC, SubSectionID ASC, DICTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08120SS_1] TO [DYNGRP]
GO
