SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN12SS_1] (@BENEFIT char(7), @IINDEX_I smallint) AS  set nocount on SELECT TOP 1  BENEFIT, IINDEX_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, DEX_ROW_ID FROM .HR2BEN12 WHERE BENEFIT = @BENEFIT AND IINDEX_I = @IINDEX_I ORDER BY BENEFIT ASC, IINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN12SS_1] TO [DYNGRP]
GO
