SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40400L_1] (@USRCLASS_RS char(15), @USRCLASS_RE char(15)) AS  set nocount on IF @USRCLASS_RS IS NULL BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 ORDER BY USRCLASS DESC END ELSE IF @USRCLASS_RS = @USRCLASS_RE BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE USRCLASS = @USRCLASS_RS ORDER BY USRCLASS DESC END ELSE BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE ORDER BY USRCLASS DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40400L_1] TO [DYNGRP]
GO
