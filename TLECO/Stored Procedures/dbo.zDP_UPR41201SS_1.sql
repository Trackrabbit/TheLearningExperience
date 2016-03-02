SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41201SS_1] (@EMPLCLAS char(15), @PYRLRTYP smallint, @PAYROLCD char(7)) AS  set nocount on SELECT TOP 1  EMPLCLAS, PYRLRTYP, PAYROLCD, DEX_ROW_ID FROM .UPR41201 WHERE EMPLCLAS = @EMPLCLAS AND PYRLRTYP = @PYRLRTYP AND PAYROLCD = @PAYROLCD ORDER BY EMPLCLAS ASC, PYRLRTYP ASC, PAYROLCD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41201SS_1] TO [DYNGRP]
GO
