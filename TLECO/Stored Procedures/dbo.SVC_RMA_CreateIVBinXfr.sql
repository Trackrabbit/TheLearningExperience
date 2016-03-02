SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RMA_CreateIVBinXfr]  (@RecType smallint,  @DocNumber char(20),  @Line numeric(19,5),  @IVDOCNBR char(20),  @IVDOCTYP smallint,  @LNSEQNBR numeric(19,5),  @ToBin char(15) ) As declare @Location char(10) declare @Item char(30) declare @IVSEQNUMBR int, @Sequence int declare @Bin char(15),@Qty numeric(19,5)  declare Bin_Transfer cursor for select SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QUANTITY from SVC05212 where   Return_Record_Type = @RecType and RETDOCID = @DocNumber and LNSEQNBR = @Line  open Bin_Transfer   fetch next from Bin_Transfer into @Sequence, @Item, @Location, @Bin, @Qty  while @@FETCH_STATUS = 0  begin  select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003 select @IVDOCNBR, @IVDOCTYP, @LNSEQNBR, @IVSEQNUMBR, @Item, @Location,  @Bin, @ToBin, 1, @Qty,0   fetch next from Bin_Transfer into @Sequence, @Item, @Location, @Bin, @Qty  end deallocate Bin_Transfer  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_CreateIVBinXfr] TO [DYNGRP]
GO
