SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10210SS_2] (@DSCRIPTN char(31), @BLDCHDID char(15)) AS  set nocount on SELECT TOP 1  BLDCHDID, DSCRIPTN, COMPPYRN, PYRNSTDT, PYRNENDT, EMPCLRNG, STTEMPCL, ENEMPCLS, EMPIDRNG, STTEMPID, ENDEMPL, PYRNIWLY, PYRNIBWK, PRNISMLY, PYRNIMLY, PYRNIQLY, PYRNISAN, PYRNIANN, PYRNIDMS, PYRNISRY, PYRNIPSN, PYRNIEIC, DAYSWRDK, WKSWRKD, PYRNIPTP, PYRNIDED, PYRNIBFT, NOTEINDX, DEX_ROW_ID FROM .UPR10210 WHERE DSCRIPTN = @DSCRIPTN AND BLDCHDID = @BLDCHDID ORDER BY DSCRIPTN ASC, BLDCHDID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10210SS_2] TO [DYNGRP]
GO