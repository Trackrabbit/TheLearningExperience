SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AUSERMSTSS_2] (@USERNAME char(31)) AS  set nocount on SELECT TOP 1  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST WHERE USERNAME = @USERNAME ORDER BY USERNAME ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AUSERMSTSS_2] TO [DYNGRP]
GO