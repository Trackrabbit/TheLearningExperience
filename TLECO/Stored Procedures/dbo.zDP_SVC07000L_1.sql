SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07000L_1] (@Menu_ID_RS numeric(19,5), @Menu_ID_RE numeric(19,5)) AS  set nocount on IF @Menu_ID_RS IS NULL BEGIN SELECT TOP 25  Menu_ID, Name, KeyCode, Path, DEX_ROW_ID FROM .SVC07000 ORDER BY Menu_ID DESC END ELSE IF @Menu_ID_RS = @Menu_ID_RE BEGIN SELECT TOP 25  Menu_ID, Name, KeyCode, Path, DEX_ROW_ID FROM .SVC07000 WHERE Menu_ID = @Menu_ID_RS ORDER BY Menu_ID DESC END ELSE BEGIN SELECT TOP 25  Menu_ID, Name, KeyCode, Path, DEX_ROW_ID FROM .SVC07000 WHERE Menu_ID BETWEEN @Menu_ID_RS AND @Menu_ID_RE ORDER BY Menu_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07000L_1] TO [DYNGRP]
GO