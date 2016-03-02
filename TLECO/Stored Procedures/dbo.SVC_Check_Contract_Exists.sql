SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_Contract_Exists] (@contractrectype int = NULL, @contractnbr varchar(11) = NULL)  as declare @numrows int if @contractrectype is NULL or @contractnbr is NULL begin return -1 end select @numrows = count(*) from SVC00600 where  CONSTS = @contractrectype and  CONTNBR = @contractnbr return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_Exists] TO [DYNGRP]
GO
