SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_ContractLastVersion]  @Number char(11),  @RecordType smallint,  @Version smallint OUTPUT  AS  select @Version = max(SVC_Contract_Version) from SVC30601 where CONSTS = @RecordType  and CONTNBR = @Number select @Version = isnull(@Version,0) return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_ContractLastVersion] TO [DYNGRP]
GO
