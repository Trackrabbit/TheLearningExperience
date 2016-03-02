SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AUSERMSTL_2] (@USERNAME_RS char(31), @USERNAME_RE char(31)) AS  set nocount on IF @USERNAME_RS IS NULL BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST ORDER BY USERNAME DESC, DEX_ROW_ID DESC END ELSE IF @USERNAME_RS = @USERNAME_RE BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST WHERE USERNAME = @USERNAME_RS ORDER BY USERNAME DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, USERNAME, EMPID_I, ACCESSLEVEL_I, PostIvIn, PostPRIn, PostPurchIn, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, INACTIVE, DEX_ROW_ID FROM .AUSERMST WHERE USERNAME BETWEEN @USERNAME_RS AND @USERNAME_RE ORDER BY USERNAME DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AUSERMSTL_2] TO [DYNGRP]
GO