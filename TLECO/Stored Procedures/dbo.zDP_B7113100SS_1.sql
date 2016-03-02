SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7113100SS_1] (@BCHSOURC char(15), @BACHNUMB char(15), @VCHNUMWK char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BCHSOURC, BACHNUMB, VCHNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7113100 WHERE BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND VCHNUMWK = @VCHNUMWK ORDER BY BCHSOURC ASC, BACHNUMB ASC, VCHNUMWK ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7113100SS_1] TO [DYNGRP]
GO