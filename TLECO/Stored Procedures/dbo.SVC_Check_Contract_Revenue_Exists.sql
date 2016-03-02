SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_Contract_Revenue_Exists] (@contractrectype int = NULL, @contractnbr varchar(11) = NULL)  as declare @numrows int if @contractrectype is NULL or @contractnbr is NULL begin return -1 end select @numrows = count(*) from SVC00604 where  CONSTS = @contractrectype and  CONTNBR = @contractnbr if @numrows = 0  begin  if exists(select 1 from SVC00600 where CONSTS = @contractrectype and  CONTNBR = @contractnbr and (BILCYC > 3 or (BILCYC =3 and svcFrequencyQty > 1)))  select @numrows = 1  end return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Revenue_Exists] TO [DYNGRP]
GO
