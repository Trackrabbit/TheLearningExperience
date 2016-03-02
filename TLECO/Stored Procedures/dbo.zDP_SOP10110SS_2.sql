SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10110SS_2] (@DESCEXPR char(51)) AS  set nocount on SELECT TOP 1  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE DESCEXPR = @DESCEXPR ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10110SS_2] TO [DYNGRP]
GO
