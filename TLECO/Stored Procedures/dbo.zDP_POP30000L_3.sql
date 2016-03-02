SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30000L_3] (@GLPOSTDT_RS datetime, @GLPOSTDT_RE datetime) AS  set nocount on IF @GLPOSTDT_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, TRXSORCE, BCHSOURC, GLPOSTDT, DEX_ROW_ID FROM .POP30000 ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE IF @GLPOSTDT_RS = @GLPOSTDT_RE BEGIN SELECT TOP 25  BACHNUMB, TRXSORCE, BCHSOURC, GLPOSTDT, DEX_ROW_ID FROM .POP30000 WHERE GLPOSTDT = @GLPOSTDT_RS ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BACHNUMB, TRXSORCE, BCHSOURC, GLPOSTDT, DEX_ROW_ID FROM .POP30000 WHERE GLPOSTDT BETWEEN @GLPOSTDT_RS AND @GLPOSTDT_RE ORDER BY GLPOSTDT DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30000L_3] TO [DYNGRP]
GO
