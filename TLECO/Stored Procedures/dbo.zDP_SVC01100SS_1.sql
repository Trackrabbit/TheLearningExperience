SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC01100SS_1] (@SPLTTERMS char(11)) AS  set nocount on SELECT TOP 1  SPLTTERMS, DSCRIPTN, DEX_ROW_ID FROM .SVC01100 WHERE SPLTTERMS = @SPLTTERMS ORDER BY SPLTTERMS ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC01100SS_1] TO [DYNGRP]
GO
