SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM40100F_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, Default_Document_Date, KPTRXHST, TRX_ID, AllowQtyOverride, ALLOWSERLOTLINKING, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, DEX_ROW_ID FROM .BM40100 ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, Default_Document_Date, KPTRXHST, TRX_ID, AllowQtyOverride, ALLOWSERLOTLINKING, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, DEX_ROW_ID FROM .BM40100 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, Default_Document_Date, KPTRXHST, TRX_ID, AllowQtyOverride, ALLOWSERLOTLINKING, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, DEX_ROW_ID FROM .BM40100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM40100F_1] TO [DYNGRP]
GO
