SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000032SI] (@USERID char(15), @PP_Profile_Name char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000032 (USERID, PP_Profile_Name) VALUES ( @USERID, @PP_Profile_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000032SI] TO [DYNGRP]
GO
