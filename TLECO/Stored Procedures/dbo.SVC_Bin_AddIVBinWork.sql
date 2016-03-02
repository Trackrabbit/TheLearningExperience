SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_AddIVBinWork]  (@IVDOCNBR char(20),  @IVDOCTYP smallint,  @LNSEQNBR numeric(19,5),  @Item  char(30),  @Location char(10),  @Bin char(15),  @ToBin char(15),  @Qty numeric(19,5)) As  declare @IVSEQNUMBR int  select @IVSEQNUMBR = isnull(Max(SEQNUMBR),0) + 16384 from IV10003 where   IVDOCNBR = @IVDOCNBR and IVDOCTYP = @IVDOCTYP and LNSEQNBR = @LNSEQNBR  insert into IV10003   (  IVDOCNBR,  IVDOCTYP,  LNSEQNBR,  SEQNUMBR,  ITEMNMBR,  LOCNCODE,  BIN,  TOBIN,  QTYTYPE,  QUANTITY,  QTYSCRAPPED  )  select   @IVDOCNBR,  @IVDOCTYP,  @LNSEQNBR,  @IVSEQNUMBR,  @Item,  @Location,  @Bin,  @ToBin,  1,  @Qty,  0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_AddIVBinWork] TO [DYNGRP]
GO
