SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00111SI] (@LOCNCODE char(11), @ORDERPOLICY smallint, @FXDORDRQTY numeric(19,5), @NMBROFDYS smallint, @ORDRPNTQTY numeric(19,5), @REPLENISHMENTMETHOD smallint, @PRCHSNGLDTM numeric(19,5), @MNFCTRNGFXDLDTM numeric(19,5), @MNFCTRNGVRBLLDTM numeric(19,5), @STAGINGLDTME numeric(19,5), @PLNNNGTMFNCDYS smallint, @DMNDTMFNCPRDS smallint, @BUYERID char(15), @PLANNERID char(15), @FRCSTCNSMPTNPRD smallint, @INCLDDINPLNNNG tinyint, @CALCULATEATP tinyint, @AUTOCHKATP tinyint, @PLNFNLPAB tinyint, @Move_Out_Fence smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00111 (LOCNCODE, ORDERPOLICY, FXDORDRQTY, NMBROFDYS, ORDRPNTQTY, REPLENISHMENTMETHOD, PRCHSNGLDTM, MNFCTRNGFXDLDTM, MNFCTRNGVRBLLDTM, STAGINGLDTME, PLNNNGTMFNCDYS, DMNDTMFNCPRDS, BUYERID, PLANNERID, FRCSTCNSMPTNPRD, INCLDDINPLNNNG, CALCULATEATP, AUTOCHKATP, PLNFNLPAB, Move_Out_Fence) VALUES ( @LOCNCODE, @ORDERPOLICY, @FXDORDRQTY, @NMBROFDYS, @ORDRPNTQTY, @REPLENISHMENTMETHOD, @PRCHSNGLDTM, @MNFCTRNGFXDLDTM, @MNFCTRNGVRBLLDTM, @STAGINGLDTME, @PLNNNGTMFNCDYS, @DMNDTMFNCPRDS, @BUYERID, @PLANNERID, @FRCSTCNSMPTNPRD, @INCLDDINPLNNNG, @CALCULATEATP, @AUTOCHKATP, @PLNFNLPAB, @Move_Out_Fence) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00111SI] TO [DYNGRP]
GO
