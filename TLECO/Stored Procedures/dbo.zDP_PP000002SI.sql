SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000002SI] (@USERID char(15), @SERIES smallint, @TYPEID smallint, @BACHNUMB char(15), @JRNENTRY int, @SEQNUMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000002 (USERID, SERIES, TYPEID, BACHNUMB, JRNENTRY, SEQNUMBR) VALUES ( @USERID, @SERIES, @TYPEID, @BACHNUMB, @JRNENTRY, @SEQNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000002SI] TO [DYNGRP]
GO
