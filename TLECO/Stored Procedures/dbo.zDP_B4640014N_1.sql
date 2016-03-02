SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640014N_1] (@BS int, @BSSI_Template_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Template_ID_RS char(25), @LNSEQNBR_RS numeric(19,5), @BSSI_Template_ID_RE char(25), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Template_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640014 WHERE ( BSSI_Template_ID = @BSSI_Template_ID AND LNSEQNBR > @LNSEQNBR OR BSSI_Template_ID > @BSSI_Template_ID ) ORDER BY BSSI_Template_ID ASC, LNSEQNBR ASC END ELSE IF @BSSI_Template_ID_RS = @BSSI_Template_ID_RE BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640014 WHERE BSSI_Template_ID = @BSSI_Template_ID_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Template_ID = @BSSI_Template_ID AND LNSEQNBR > @LNSEQNBR OR BSSI_Template_ID > @BSSI_Template_ID ) ORDER BY BSSI_Template_ID ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640014 WHERE BSSI_Template_ID BETWEEN @BSSI_Template_ID_RS AND @BSSI_Template_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Template_ID = @BSSI_Template_ID AND LNSEQNBR > @LNSEQNBR OR BSSI_Template_ID > @BSSI_Template_ID ) ORDER BY BSSI_Template_ID ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640014N_1] TO [DYNGRP]
GO
