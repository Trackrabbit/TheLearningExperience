SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20020L_2] (@Shared_List_RS tinyint, @Extender_List_Desc_RS char(31), @Shared_List_RE tinyint, @Extender_List_Desc_RE char(31)) AS /* 12.00.0311.000 */ set nocount on IF @Shared_List_RS IS NULL BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB, DEX_ROW_ID FROM .EXT20020 ORDER BY Shared_List DESC, Extender_List_Desc DESC, DEX_ROW_ID DESC END ELSE IF @Shared_List_RS = @Shared_List_RE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB, DEX_ROW_ID FROM .EXT20020 WHERE Shared_List = @Shared_List_RS AND Extender_List_Desc BETWEEN @Extender_List_Desc_RS AND @Extender_List_Desc_RE ORDER BY Shared_List DESC, Extender_List_Desc DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB, DEX_ROW_ID FROM .EXT20020 WHERE Shared_List BETWEEN @Shared_List_RS AND @Shared_List_RE AND Extender_List_Desc BETWEEN @Extender_List_Desc_RS AND @Extender_List_Desc_RE ORDER BY Shared_List DESC, Extender_List_Desc DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20020L_2] TO [DYNGRP]
GO
