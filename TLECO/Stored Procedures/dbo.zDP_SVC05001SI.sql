SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05001SI] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @LINITMTYP char(3), @LNITMSEQ int, @ITEMNMBR char(31), @ITEMDESC char(101), @SERLNMBR char(21), @QUANTITY numeric(19,5), @Received tinyint, @Shipped tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05001 (Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMDESC, SERLNMBR, QUANTITY, Received, Shipped) VALUES ( @Return_Record_Type, @RETDOCID, @LNSEQNBR, @LINITMTYP, @LNITMSEQ, @ITEMNMBR, @ITEMDESC, @SERLNMBR, @QUANTITY, @Received, @Shipped) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05001SI] TO [DYNGRP]
GO