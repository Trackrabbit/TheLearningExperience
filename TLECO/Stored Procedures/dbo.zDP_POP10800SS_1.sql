SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10800SS_1] (@POPRCTNM char(17), @PONUMBER char(17)) AS  set nocount on SELECT TOP 1  POPRCTNM, PONUMBER, PMNTNMBR, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, PrepaymentAccountIndex, PrepaymentAmount, OriginatingPrepaymentAmt, PSTGSTUS, BACHNUMB, BCHSOURC, TRXSORCE, GLPOSTDT, VOIDED, DEX_ROW_ID FROM .POP10800 WHERE POPRCTNM = @POPRCTNM AND PONUMBER = @PONUMBER ORDER BY POPRCTNM ASC, PONUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10800SS_1] TO [DYNGRP]
GO
