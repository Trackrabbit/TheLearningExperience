SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00502N_1] (@BS int, @MODIFDT datetime, @LOCNCODE char(11), @ITEMNMBR char(31), @MODIFDT_RS datetime, @LOCNCODE_RS char(11), @ITEMNMBR_RS char(31), @MODIFDT_RE datetime, @LOCNCODE_RE char(11), @ITEMNMBR_RE char(31)) AS  set nocount on IF @MODIFDT_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 WHERE ( MODIFDT = @MODIFDT AND LOCNCODE = @LOCNCODE AND ITEMNMBR > @ITEMNMBR OR MODIFDT = @MODIFDT AND LOCNCODE > @LOCNCODE OR MODIFDT > @MODIFDT ) ORDER BY MODIFDT ASC, LOCNCODE ASC, ITEMNMBR ASC END ELSE IF @MODIFDT_RS = @MODIFDT_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 WHERE MODIFDT = @MODIFDT_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( MODIFDT = @MODIFDT AND LOCNCODE = @LOCNCODE AND ITEMNMBR > @ITEMNMBR OR MODIFDT = @MODIFDT AND LOCNCODE > @LOCNCODE OR MODIFDT > @MODIFDT ) ORDER BY MODIFDT ASC, LOCNCODE ASC, ITEMNMBR ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 WHERE MODIFDT BETWEEN @MODIFDT_RS AND @MODIFDT_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( MODIFDT = @MODIFDT AND LOCNCODE = @LOCNCODE AND ITEMNMBR > @ITEMNMBR OR MODIFDT = @MODIFDT AND LOCNCODE > @LOCNCODE OR MODIFDT > @MODIFDT ) ORDER BY MODIFDT ASC, LOCNCODE ASC, ITEMNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00502N_1] TO [DYNGRP]
GO
