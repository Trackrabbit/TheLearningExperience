SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP300001SI] (@PP_Module smallint, @DISTTYPE smallint, @PP_Dis_Warning tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP300001 (PP_Module, DISTTYPE, PP_Dis_Warning) VALUES ( @PP_Module, @DISTTYPE, @PP_Dis_Warning) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP300001SI] TO [DYNGRP]
GO
