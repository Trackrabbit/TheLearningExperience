SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000001SI] (@UNIQKEY char(1), @SOURCDOC char(11), @TRXSRCPX char(5), @NTRXSNUM int, @PP_Document_Number char(21), @PP_Open_Closed_Periods smallint, @PP_Auto_Post smallint, @PP_Auto_Post_Back smallint, @PP_RM_Initial_Posting smallint, @PP_PM_Initial_Posting smallint, @PP_Calculation_Method smallint, @PPPRTRPT tinyint, @PPPRTPRT tinyint, @PPPRTSCN tinyint, @PRNTOFIL tinyint, @PP_Void_Trns smallint, @PP_Overide_Access smallint, @PP_Profile_Account_Overw smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000001 (UNIQKEY, SOURCDOC, TRXSRCPX, NTRXSNUM, PP_Document_Number, PP_Open_Closed_Periods, PP_Auto_Post, PP_Auto_Post_Back, PP_RM_Initial_Posting, PP_PM_Initial_Posting, PP_Calculation_Method, PPPRTRPT, PPPRTPRT, PPPRTSCN, PRNTOFIL, PP_Void_Trns, PP_Overide_Access, PP_Profile_Account_Overw) VALUES ( @UNIQKEY, @SOURCDOC, @TRXSRCPX, @NTRXSNUM, @PP_Document_Number, @PP_Open_Closed_Periods, @PP_Auto_Post, @PP_Auto_Post_Back, @PP_RM_Initial_Posting, @PP_PM_Initial_Posting, @PP_Calculation_Method, @PPPRTRPT, @PPPRTPRT, @PPPRTSCN, @PRNTOFIL, @PP_Void_Trns, @PP_Overide_Access, @PP_Profile_Account_Overw) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000001SI] TO [DYNGRP]
GO
