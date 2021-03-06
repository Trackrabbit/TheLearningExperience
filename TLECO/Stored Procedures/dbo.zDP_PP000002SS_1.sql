SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000002SS_1] (@USERID char(15), @SERIES smallint, @TYPEID smallint) AS  set nocount on SELECT TOP 1  USERID, SERIES, TYPEID, BACHNUMB, JRNENTRY, SEQNUMBR, DEX_ROW_ID FROM .PP000002 WHERE USERID = @USERID AND SERIES = @SERIES AND TYPEID = @TYPEID ORDER BY USERID ASC, SERIES ASC, TYPEID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000002SS_1] TO [DYNGRP]
GO
