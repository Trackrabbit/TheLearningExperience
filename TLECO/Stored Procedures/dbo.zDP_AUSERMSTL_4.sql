SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AUSERMSTL_4] (@EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST ORDER BY EMPID_I DESC, DEX_ROW_ID DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST WHERE EMPID_I = @EMPID_I_RS ORDER BY EMPID_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY EMPID_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AUSERMSTL_4] TO [DYNGRP]
GO
