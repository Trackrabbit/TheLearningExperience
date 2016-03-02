SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08120SI] (@USERID char(15), @SectionID smallint, @SubSectionID smallint, @DICTID smallint, @SEQNUMBR int, @Visible tinyint, @SubSectionUserDefined char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY08120 (USERID, SectionID, SubSectionID, DICTID, SEQNUMBR, Visible, SubSectionUserDefined) VALUES ( @USERID, @SectionID, @SubSectionID, @DICTID, @SEQNUMBR, @Visible, @SubSectionUserDefined) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08120SI] TO [DYNGRP]
GO
