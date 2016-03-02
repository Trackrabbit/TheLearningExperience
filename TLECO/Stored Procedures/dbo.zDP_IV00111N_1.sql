SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00111N_1] (@BS int, @LOCNCODE char(11), @LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, ORDERPOLICY, FXDORDRQTY, NMBROFDYS, ORDRPNTQTY, REPLENISHMENTMETHOD, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, BUYERID, PLANNERID, FRCSTCNSMPTNPRD, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, Move_Out_Fence, DEX_ROW_ID FROM .IV00111 WHERE ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, ORDERPOLICY, FXDORDRQTY, NMBROFDYS, ORDRPNTQTY, REPLENISHMENTMETHOD, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, BUYERID, PLANNERID, FRCSTCNSMPTNPRD, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, Move_Out_Fence, DEX_ROW_ID FROM .IV00111 WHERE LOCNCODE = @LOCNCODE_RS AND ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, ORDERPOLICY, FXDORDRQTY, NMBROFDYS, ORDRPNTQTY, REPLENISHMENTMETHOD, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, BUYERID, PLANNERID, FRCSTCNSMPTNPRD, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, Move_Out_Fence, DEX_ROW_ID FROM .IV00111 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00111N_1] TO [DYNGRP]
GO
