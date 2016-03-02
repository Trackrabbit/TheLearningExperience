SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10210L_1] (@BLDCHDID_RS char(15), @BLDCHDID_RE char(15)) AS  set nocount on IF @BLDCHDID_RS IS NULL BEGIN SELECT TOP 25  BLDCHDID, DSCRIPTN, COMPPYRN, PYRNSTDT, PYRNENDT, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, DAYSWRDK, WKSWRKD, PYRNIPTP, PYRNIDED, PYRNIBFT, NOTEINDX, DEX_ROW_ID FROM .UPR10210 ORDER BY BLDCHDID DESC END ELSE IF @BLDCHDID_RS = @BLDCHDID_RE BEGIN SELECT TOP 25  BLDCHDID, DSCRIPTN, COMPPYRN, PYRNSTDT, PYRNENDT, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, DAYSWRDK, WKSWRKD, PYRNIPTP, PYRNIDED, PYRNIBFT, NOTEINDX, DEX_ROW_ID FROM .UPR10210 WHERE BLDCHDID = @BLDCHDID_RS ORDER BY BLDCHDID DESC END ELSE BEGIN SELECT TOP 25  BLDCHDID, DSCRIPTN, COMPPYRN, PYRNSTDT, PYRNENDT, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, DAYSWRDK, WKSWRKD, PYRNIPTP, PYRNIDED, PYRNIBFT, NOTEINDX, DEX_ROW_ID FROM .UPR10210 WHERE BLDCHDID BETWEEN @BLDCHDID_RS AND @BLDCHDID_RE ORDER BY BLDCHDID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10210L_1] TO [DYNGRP]
GO
