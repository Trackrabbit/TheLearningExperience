SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000001SS_1] (@UNIQKEY char(1)) AS  set nocount on SELECT TOP 1  UNIQKEY, SOURCDOC, TRXSRCPX, NTRXSNUM, PP_Document_Number, PP_Open_Closed_Periods, PP_Auto_Post, PP_Auto_Post_Back, PP_RM_Initial_Posting, PP_PM_Initial_Posting, PP_Calculation_Method, PPPRTRPT, PPPRTPRT, PPPRTSCN, PRNTOFIL, PP_Void_Trns, PP_Overide_Access, PP_Profile_Account_Overw, DEX_ROW_ID FROM .PP000001 WHERE UNIQKEY = @UNIQKEY ORDER BY UNIQKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000001SS_1] TO [DYNGRP]
GO
