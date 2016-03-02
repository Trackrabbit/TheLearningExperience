SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_RTV_On_Transfer] ( @RTVnumber varchar(15) = NULL,  @RTVLine numeric(19,5),  @Doc_ID char(15) output,  @Line_Seq int output,  @Status smallint output)  as  if  @RTVnumber is NULL begin return -1 end if @RTVLine = 0  select @Doc_ID = ORDDOCID,@Line_Seq=LNITMSEQ, @Status=STATUS from SVC00701 where RTV_Number = @RTVnumber else  select @Doc_ID = ORDDOCID,@Line_Seq=LNITMSEQ, @Status=STATUS from SVC00701 where RTV_Number = @RTVnumber and LNSEQNBR = @RTVLine  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_RTV_On_Transfer] TO [DYNGRP]
GO
