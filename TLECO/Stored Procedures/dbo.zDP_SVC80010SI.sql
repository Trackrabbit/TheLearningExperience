SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC80010SI] (@SERLNMBR char(21), @PMDTLID char(9), @SCHEDID char(9), @CALLNBR char(11), @ITEMNMBR char(31), @SRVTYPE char(11), @CUSTNMBR char(15), @QUANTITY numeric(19,5), @PARSTOTPRC numeric(19,5), @LABSTOTPRC numeric(19,5), @PARSTOTCST numeric(19,5), @LABSTOTCST numeric(19,5), @MARKED tinyint, @CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC80010 (SERLNMBR, PMDTLID, SCHEDID, CALLNBR, ITEMNMBR, SRVTYPE, CUSTNMBR, QUANTITY, PARSTOTPRC, LABSTOTPRC, PARSTOTCST, LABSTOTCST, MARKED, CONSTS, CONTNBR, LNSEQNBR) VALUES ( @SERLNMBR, @PMDTLID, @SCHEDID, @CALLNBR, @ITEMNMBR, @SRVTYPE, @CUSTNMBR, @QUANTITY, @PARSTOTPRC, @LABSTOTPRC, @PARSTOTCST, @LABSTOTCST, @MARKED, @CONSTS, @CONTNBR, @LNSEQNBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC80010SI] TO [DYNGRP]
GO