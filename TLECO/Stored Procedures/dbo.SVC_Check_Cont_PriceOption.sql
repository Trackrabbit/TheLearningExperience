SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_Cont_PriceOption] (@PriceOption varchar(11) = NULL)  as declare @numrows int select @numrows = count(*) from SVC00652 where CONSTS < 4 and OPTTYPE = @PriceOption if @numrows = 0   BEGIN  select @numrows = count(*) from SVC00655 where CONSTS < 4 and OPTTYPE = @PriceOption  END return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Cont_PriceOption] TO [DYNGRP]
GO
