SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_POP_Get_Exchange_Rate](  @CURNCYID char(15),  @XCHGRATE numeric(19,5) output,  @DEFPURTP char(15) output,                                           @EXGTBLID char(15) output  ) as set nocount on select @DEFPURTP=DEFPURTP from MC40000 select @EXGTBLID=EXGTBLID from MC40301   where CURNCYID = @CURNCYID and RATETPID = @DEFPURTP select @XCHGRATE=XCHGRATE   from DYNAMICS..MC00100   where EXGTBLID = @EXGTBLID order by EXCHDATE    
GO
GRANT EXECUTE ON  [dbo].[SVC_POP_Get_Exchange_Rate] TO [DYNGRP]
GO
