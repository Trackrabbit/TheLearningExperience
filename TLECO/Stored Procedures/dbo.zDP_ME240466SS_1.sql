SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240466SS_1] (@MEUSERID char(15), @BACHNUMB char(15), @BCHSOURC char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  MEUSERID, BACHNUMB, BCHSOURC, REQSTDATE, APPRVLDT, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID FROM .ME240466 WHERE MEUSERID = @MEUSERID AND BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC ORDER BY MEUSERID ASC, BACHNUMB ASC, BCHSOURC ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240466SS_1] TO [DYNGRP]
GO