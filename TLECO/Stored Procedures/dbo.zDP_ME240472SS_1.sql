SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240472SS_1] (@BACHNUMB char(15), @BCHSOURC char(15), @VENDORID char(15), @PMNTNMBR char(21)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, MEORIGBACHNUMB, VENDORID, VENDNAME, PMNTNMBR, NUMOFTRX, TotAmtPaid, REJECTIONREASON, DEX_ROW_ID FROM .ME240472 WHERE BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID = @VENDORID AND PMNTNMBR = @PMNTNMBR ORDER BY BACHNUMB ASC, BCHSOURC ASC, VENDORID ASC, PMNTNMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240472SS_1] TO [DYNGRP]
GO
