SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Get_Next_Xfer_Number](@Next_Number char(15) output) as declare  @Trncnt int,  @Zero_pad char(20),  @Old char(15),  @Old_prefix char(20),  @Old_suffix char(20),  @New_suffix_int int,  @New_suffix char(20),  @Alpha_header_length int,  @New char(15),  @O_iErrorState int   select @Zero_pad = '000000000000000000' select @Trncnt = @@trancount select @Alpha_header_length = 0  BEGIN TRANSACTION if (select NXTSPNUM from IV40100)> ''   begin  select @New = NXTSPNUM, @Next_Number = NXTSPNUM from IV40100  exec ivNumber_Inc_Dec 1, @New output, @O_iErrorState output  if @O_iErrorState <> 0 goto badentry  update IV40100 set NXTSPNUM = @New  end else  begin  select @Old=ORDDOCID from SVC00999 with (HOLDLOCK)  select @Next_Number = @Old  select @Old_prefix = substring(@Old,1,@Alpha_header_length)  select @Old_suffix = substring(@Old,@Alpha_header_length+1,LEN(@Old)-@Alpha_header_length)  select @New_suffix = rtrim(ltrim(convert(char(15),convert(int,@Old_suffix)+1)))  select @New = stuff(ltrim(rtrim(@Old)),  LEN(ltrim(rtrim(@Old)))-LEN(ltrim(rtrim(@New_suffix)))+1,  LEN(ltrim(rtrim(@New_suffix))),  ltrim(rtrim(@New_suffix)))  update SVC00999 set ORDDOCID = @New  if @@error <> 0 goto badentry  select @Next_Number = substring(@Zero_pad,1,10-LEN(ltrim(rtrim(@Next_Number))))  + ltrim(rtrim(@Next_Number))  end  COMMIT TRANSACTION return(0) badentry:  rollback transaction return(99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Next_Xfer_Number] TO [DYNGRP]
GO
