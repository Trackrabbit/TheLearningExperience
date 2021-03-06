SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000001L_1] (@UNIQKEY_RS char(1), @UNIQKEY_RE char(1)) AS  set nocount on IF @UNIQKEY_RS IS NULL BEGIN SELECT TOP 25  UNIQKEY, SOURCDOC, TRXSRCPX, NTRXSNUM, PP_Document_Number, PP_Open_Closed_Periods, PP_Auto_Post, PP_Auto_Post_Back, PP_RM_Initial_Posting, PP_PM_Initial_Posting, PP_Calculation_Method, PPPRTRPT, PPPRTPRT, PPPRTSCN, PRNTOFIL, PP_Void_Trns, PP_Overide_Access, PP_Profile_Account_Overw, DEX_ROW_ID FROM .PP000001 ORDER BY UNIQKEY DESC END ELSE IF @UNIQKEY_RS = @UNIQKEY_RE BEGIN SELECT TOP 25  UNIQKEY, SOURCDOC, TRXSRCPX, NTRXSNUM, PP_Document_Number, PP_Open_Closed_Periods, PP_Auto_Post, PP_Auto_Post_Back, PP_RM_Initial_Posting, PP_PM_Initial_Posting, PP_Calculation_Method, PPPRTRPT, PPPRTPRT, PPPRTSCN, PRNTOFIL, PP_Void_Trns, PP_Overide_Access, PP_Profile_Account_Overw, DEX_ROW_ID FROM .PP000001 WHERE UNIQKEY = @UNIQKEY_RS ORDER BY UNIQKEY DESC END ELSE BEGIN SELECT TOP 25  UNIQKEY, SOURCDOC, TRXSRCPX, NTRXSNUM, PP_Document_Number, PP_Open_Closed_Periods, PP_Auto_Post, PP_Auto_Post_Back, PP_RM_Initial_Posting, PP_PM_Initial_Posting, PP_Calculation_Method, PPPRTRPT, PPPRTPRT, PPPRTSCN, PRNTOFIL, PP_Void_Trns, PP_Overide_Access, PP_Profile_Account_Overw, DEX_ROW_ID FROM .PP000001 WHERE UNIQKEY BETWEEN @UNIQKEY_RS AND @UNIQKEY_RE ORDER BY UNIQKEY DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000001L_1] TO [DYNGRP]
GO
