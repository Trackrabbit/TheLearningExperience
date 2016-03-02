SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01400SS_4] (@RELID int, @USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, USERNAME, Zoom_Fields_Font_Color, Zoom_Fields_Font_Style, Editable_Fields_Backgrou, Editable_Fields_Font_Col, Editable_Fields_Pattern, Editable_Fields_Pattern_, Scrolling_Fields_Backgro, Scrolling_Fields_Font_Co, Scrolling_Fields_Pattern, Scrolling_Fields_PatCor, Required_Fields_Font_Col, Required_Fields_Font_Sty, Internet_Browser, Internet_Address, Internet_Type, Internet_Address_Name, PASSWORD, USRCLASS, MDFRDENT, MODIFDT, CREATDDT, LSTUSRED, PRTOSCRN, PRTOPRTR, SHRQFLDS, DISTPROC, HSCRLARW, SOPTYPE, RELID, SECACCS, TODOOPEN, TODOPERSOPEN, TODOPERSROLL, PALETTETYPE, ORGANIZATIONALVIEW, ACCOUNTINGVIEW, USERLANG, UserRole, UserType, UserStatus, DateInactivated, Last_EWS_User_Name, Last_EWS_Email_Address, WCUser, ADObjectGuid, SQLLoginID, WindowCommandDisplay, DEX_ROW_ID FROM .SY01400 WHERE RELID = @RELID AND USERID = @USERID ORDER BY RELID ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01400SS_4] TO [DYNGRP]
GO
