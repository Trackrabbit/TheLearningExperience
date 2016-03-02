SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40400SS_3] (@RELID int, @USRCLASS char(15)) AS  set nocount on SELECT TOP 1  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE RELID = @RELID AND USRCLASS = @USRCLASS ORDER BY RELID ASC, USRCLASS ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40400SS_3] TO [DYNGRP]
GO
