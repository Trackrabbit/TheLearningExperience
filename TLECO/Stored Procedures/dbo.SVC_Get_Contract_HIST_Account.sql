SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_Contract_HIST_Account]  @Number char(11),  @RecordType smallint,  @Version smallint,  @Line as numeric (19,5),  @Sequence as integer,  @DistType smallint,  @AccountIndex integer OUTPUT  AS  select @AccountIndex = ACTINDX from SVC30609 where CONSTS = @RecordType and SVC_Contract_Version = @Version  and CONTNBR = @Number and SVC_Distribution_Type = @DistType  and LNSEQNBR =@Line and SEQNUMBR = @Sequence  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_HIST_Account] TO [DYNGRP]
GO
