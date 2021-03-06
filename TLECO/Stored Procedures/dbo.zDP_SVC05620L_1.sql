SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05620L_1] (@RTV_Number_RS char(15), @LNSEQNBR_RS numeric(19,5), @RTV_Number_RE char(15), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LNSEQNBR, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC05620 ORDER BY RTV_Number DESC, LNSEQNBR DESC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LNSEQNBR, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC05620 WHERE RTV_Number = @RTV_Number_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY RTV_Number DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LNSEQNBR, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC05620 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY RTV_Number DESC, LNSEQNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05620L_1] TO [DYNGRP]
GO
