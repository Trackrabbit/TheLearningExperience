SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Add_Option_To_All_Sites](@CONSTS smallint,  @CONTNBR char(11),  @OPTTYPE char(11)) as declare @ADRSCODE char(15) declare Cont_Site_Option cursor for select ADRSCODE   from SVC00608  where CONSTS = @CONSTS and  CONTNBR = @CONTNBR open Cont_Site_Option fetch next from Cont_Site_Option into @ADRSCODE while @@FETCH_STATUS = 0  BEGIN  exec SVC_Add_Option_To_Site @CONSTS, @CONTNBR, @ADRSCODE, @OPTTYPE   fetch next from Cont_Site_Option into @ADRSCODE  END deallocate Cont_Site_Option    
GO
GRANT EXECUTE ON  [dbo].[SVC_Add_Option_To_All_Sites] TO [DYNGRP]
GO
