SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40400UN_3] (@BS int, @RELID int, @USRCLASS char(15), @RELID_RS int, @USRCLASS_RS char(15), @RELID_RE int, @USRCLASS_RE char(15)) AS  set nocount on IF @RELID_RS IS NULL BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE ( RELID = @RELID AND USRCLASS > @USRCLASS OR RELID > @RELID ) ORDER BY RELID ASC, USRCLASS ASC, DEX_ROW_ID ASC END ELSE IF @RELID_RS = @RELID_RE BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE RELID = @RELID_RS AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND ( RELID = @RELID AND USRCLASS > @USRCLASS OR RELID > @RELID ) ORDER BY RELID ASC, USRCLASS ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CREATDDT, LSTUSRED, MODIFDT, USRCLASS, DSCRIPTN, SRBCHSEC_1, SRBCHSEC_2, SRBCHSEC_3, SRBCHSEC_4, SRBCHSEC_5, SRBCHSEC_6, SRBCHSEC_7, SRSFNSEC_1, SRSFNSEC_2, SRSFNSEC_3, SRSFNSEC_4, SRSFNSEC_5, SRSFNSEC_6, SRSFNSEC_7, MSCPRMIS, DEFLTCLS, RELID, SECACCS, DEX_ROW_ID FROM .SY40400 WHERE RELID BETWEEN @RELID_RS AND @RELID_RE AND USRCLASS BETWEEN @USRCLASS_RS AND @USRCLASS_RE AND ( RELID = @RELID AND USRCLASS > @USRCLASS OR RELID > @RELID ) ORDER BY RELID ASC, USRCLASS ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40400UN_3] TO [DYNGRP]
GO