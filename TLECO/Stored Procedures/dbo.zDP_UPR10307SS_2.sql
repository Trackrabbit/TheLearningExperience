SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10307SS_2] (@BACHNUMB char(15), @MLCHKTYP smallint, @PYADNMBR int) AS  set nocount on SELECT TOP 1  MLCHKTYP, PYADNMBR, BACHNUMB, CHEKBKID, CHEKNMBR, CHEKDATE, POSTEDDT, EMPLOYID, ATACRVAC, ATACRSCK, GROSAMNT, NETAMNT, MCHKPRTD, MCHKPSTD, NOTEINDX, DEX_ROW_ID FROM .UPR10307 WHERE BACHNUMB = @BACHNUMB AND MLCHKTYP = @MLCHKTYP AND PYADNMBR = @PYADNMBR ORDER BY BACHNUMB ASC, MLCHKTYP ASC, PYADNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10307SS_2] TO [DYNGRP]
GO