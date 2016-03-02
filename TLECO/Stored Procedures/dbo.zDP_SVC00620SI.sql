SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00620SI] (@CONSTS smallint, @CONTNBR char(11), @LNITMSEQ int, @SVC_Contract_Line_SEQ numeric(19,5), @DATE1 datetime, @TIME1 datetime, @ITEMNMBR char(31), @SERLNMBR char(21), @ADRSCODE char(15), @ITEMDESC char(101), @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00620 (CONSTS, CONTNBR, LNITMSEQ, SVC_Contract_Line_SEQ, DATE1, TIME1, ITEMNMBR, SERLNMBR, ADRSCODE, ITEMDESC, USERID) VALUES ( @CONSTS, @CONTNBR, @LNITMSEQ, @SVC_Contract_Line_SEQ, @DATE1, @TIME1, @ITEMNMBR, @SERLNMBR, @ADRSCODE, @ITEMDESC, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00620SI] TO [DYNGRP]
GO
