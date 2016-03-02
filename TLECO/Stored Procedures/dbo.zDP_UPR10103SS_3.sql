SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10103SS_3] (@RPTNGYR smallint, @DEPRTMNT char(7), @LASTNAME char(21), @FRSTNAME char(15), @MIDLNAME char(15)) AS  set nocount on SELECT TOP 1  RPTNGYR, LASTNAME, FRSTNAME, MIDLNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, EMPLOYID, SOCSCNUM, DEPRTMNT, GROSDIST, TXBAMNDT, TAMD1099, TOTDSTCB, CAPTLGAIN, FEDITXWH, EMPLECTR, NTREALAP, DSTCODE1, DSTCODE2, DSTCODE3, IRASEPCB, OTAM1099, OTPC1099, TTLTDSTPC, STATWGS1, STATWGS2, STAINTX1, STAINTX2, STATECD1, STATECD2, ESTIDNR1, ESTIDBR2, LCLWGES1, LCLWGS2, LCLINTX1, LCLINTX2, LCLCODE1, LCLCODE2, Y1099RFC, EMPLSUFF, DEX_ROW_ID FROM .UPR10103 WHERE RPTNGYR = @RPTNGYR AND DEPRTMNT = @DEPRTMNT AND LASTNAME = @LASTNAME AND FRSTNAME = @FRSTNAME AND MIDLNAME = @MIDLNAME ORDER BY RPTNGYR ASC, DEPRTMNT ASC, LASTNAME ASC, FRSTNAME ASC, MIDLNAME ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10103SS_3] TO [DYNGRP]
GO