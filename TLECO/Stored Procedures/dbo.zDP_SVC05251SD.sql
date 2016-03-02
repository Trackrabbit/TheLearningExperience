SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05251SD] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LINITMTYP char(3), @LNITMSEQ int, @QTYTYPE smallint, @SLTSQNUM int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05251 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM = @SLTSQNUM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05251 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LINITMTYP = @LINITMTYP AND LNITMSEQ = @LNITMSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM = @SLTSQNUM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05251SD] TO [DYNGRP]
GO
