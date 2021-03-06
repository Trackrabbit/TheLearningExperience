SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640016L_2] (@BSSI_Template_ID_RS char(25), @LNSEQNBR_RS numeric(19,5), @BSSI_Template_ID_RE char(25), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Template_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640016 ORDER BY BSSI_Template_ID DESC, LNSEQNBR DESC END ELSE IF @BSSI_Template_ID_RS = @BSSI_Template_ID_RE BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640016 WHERE BSSI_Template_ID = @BSSI_Template_ID_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Template_ID DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  BSSI_Template_ID, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640016 WHERE BSSI_Template_ID BETWEEN @BSSI_Template_ID_RS AND @BSSI_Template_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Template_ID DESC, LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640016L_2] TO [DYNGRP]
GO
