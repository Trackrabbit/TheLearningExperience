SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM40100SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, Default_Document_Date, KPTRXHST, TRX_ID, AllowQtyOverride, ALLOWSERLOTLINKING, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, DEX_ROW_ID FROM .BM40100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM40100SS_1] TO [DYNGRP]
GO