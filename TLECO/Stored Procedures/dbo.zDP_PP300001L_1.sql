SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP300001L_1] (@PP_Module_RS smallint, @DISTTYPE_RS smallint, @PP_Module_RE smallint, @DISTTYPE_RE smallint) AS  set nocount on IF @PP_Module_RS IS NULL BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 ORDER BY PP_Module DESC, DISTTYPE DESC END ELSE IF @PP_Module_RS = @PP_Module_RE BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 WHERE PP_Module = @PP_Module_RS AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE ORDER BY PP_Module DESC, DISTTYPE DESC END ELSE BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 WHERE PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE ORDER BY PP_Module DESC, DISTTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP300001L_1] TO [DYNGRP]
GO
