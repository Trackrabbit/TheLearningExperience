SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Check_Contract_New_Lines]  (@contractrectype int = NULL, @contractnbr varchar(11) = NULL,  @LineCount int output, @SiteCount int output)  as if @contractrectype is NULL or @contractnbr is NULL begin return -1 end select @LineCount = count(*) from SVC00601 where  CONSTS = @contractrectype and  CONTNBR = @contractnbr and BILSTAT=0 select @SiteCount = count(*) from SVC00608 where  CONSTS = @contractrectype and  CONTNBR = @contractnbr and BILSTAT=0    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Contract_New_Lines] TO [DYNGRP]
GO
