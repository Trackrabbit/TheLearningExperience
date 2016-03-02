SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Set_Transfer_Line_Dist]  @DocID varchar(15) ,  @Line integer,  @IVIndex integer,  @OffsetIndex integer,  @Amount numeric (19,2),  @OrigAmount numeric (19,2),  @CurrencyIndex smallint   AS declare @SEQNUMBR integer declare @MinDate datetime  exec smGetMinDate @MinDate output  delete from SVC00731 where ORDDOCID = @DocID and LNITMSEQ = @Line  and (SVC_Distribution_Type=4 or SVC_Distribution_Type=5) and POSTED = 0  if exists (select * from SVC00701 where ORDDOCID = @DocID and LNITMSEQ = @Line) BEGIN  exec SVC_Dist_Get_SEQ_Transfer @DocID, @Line, @SEQNUMBR output  insert SVC00731  select   @DocID,  @Line,  @SEQNUMBR,  4,   '',  @IVIndex,  0,0,   @Amount,   @OrigAmount,  isnull(@CurrencyIndex,0),  '',  0,  @MinDate  insert SVC00731  select   @DocID,  @Line,  @SEQNUMBR,  5,   '',  @OffsetIndex,  @Amount,   @OrigAmount,  0,0,   isnull(@CurrencyIndex,0),  '',  0,  @MinDate  END   return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Transfer_Line_Dist] TO [DYNGRP]
GO
