SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08120SS_2] (@USERID char(15), @SectionID smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined, DEX_ROW_ID FROM .SY08120 WHERE USERID = @USERID AND SectionID = @SectionID AND SEQNUMBR = @SEQNUMBR ORDER BY USERID ASC, SectionID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08120SS_2] TO [DYNGRP]
GO
