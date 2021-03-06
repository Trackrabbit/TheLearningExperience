SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41201F_1] (@EMPLCLAS_RS char(15), @PYRLRTYP_RS smallint, @PAYROLCD_RS char(7), @EMPLCLAS_RE char(15), @PYRLRTYP_RE smallint, @PAYROLCD_RE char(7)) AS  set nocount on IF @EMPLCLAS_RS IS NULL BEGIN SELECT TOP 25  EMPLCLAS, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR41201 ORDER BY EMPLCLAS ASC, PYRLRTYP ASC, PAYROLCD ASC END ELSE IF @EMPLCLAS_RS = @EMPLCLAS_RE BEGIN SELECT TOP 25  EMPLCLAS, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR41201 WHERE EMPLCLAS = @EMPLCLAS_RS AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY EMPLCLAS ASC, PYRLRTYP ASC, PAYROLCD ASC END ELSE BEGIN SELECT TOP 25  EMPLCLAS, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR41201 WHERE EMPLCLAS BETWEEN @EMPLCLAS_RS AND @EMPLCLAS_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND PAYROLCD BETWEEN @PAYROLCD_RS AND @PAYROLCD_RE ORDER BY EMPLCLAS ASC, PYRLRTYP ASC, PAYROLCD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41201F_1] TO [DYNGRP]
GO
