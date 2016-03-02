SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08100SI] (@USERID char(15), @SectionID smallint, @DICTID smallint, @COLNUMBR smallint, @SEQNUMBR int, @Visible tinyint, @MetricSequence int, @Selected tinyint, @Mode smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY08100 (USERID, SectionID, DICTID, COLNUMBR, SEQNUMBR, Visible, MetricSequence, Selected, Mode) VALUES ( @USERID, @SectionID, @DICTID, @COLNUMBR, @SEQNUMBR, @Visible, @MetricSequence, @Selected, @Mode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08100SI] TO [DYNGRP]
GO
