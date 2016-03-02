SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP300001N_2] (@BS int, @PP_Module smallint, @DEX_ROW_ID int, @PP_Module_RS smallint, @PP_Module_RE smallint) AS  set nocount on IF @PP_Module_RS IS NULL BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 WHERE ( PP_Module = @PP_Module AND DEX_ROW_ID > @DEX_ROW_ID OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, DEX_ROW_ID ASC END ELSE IF @PP_Module_RS = @PP_Module_RE BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 WHERE PP_Module = @PP_Module_RS AND ( PP_Module = @PP_Module AND DEX_ROW_ID > @DEX_ROW_ID OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PP_Module, DISTTYPE, PP_Dis_Warning, DEX_ROW_ID FROM .PP300001 WHERE PP_Module BETWEEN @PP_Module_RS AND @PP_Module_RE AND ( PP_Module = @PP_Module AND DEX_ROW_ID > @DEX_ROW_ID OR PP_Module > @PP_Module ) ORDER BY PP_Module ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP300001N_2] TO [DYNGRP]
GO
