SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10101SS_1] (@CUSTNMBR char(15), @ADRSCODE char(15)) AS  set nocount on SELECT TOP 1  CUSTNMBR, ADRSCODE, TXRGNNUM, CCode, TMCODE, TRANSNATURE, TCC, PRT, RGN, PRCDRRGM, INCTRMS, DEX_ROW_ID FROM .VAT10101 WHERE CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE ORDER BY CUSTNMBR ASC, ADRSCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10101SS_1] TO [DYNGRP]
GO
