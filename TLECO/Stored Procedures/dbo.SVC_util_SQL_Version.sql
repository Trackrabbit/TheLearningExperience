SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_SQL_Version]  (@IsSQL7 tinyint OUTPUT ) AS declare @ver varchar(10) declare @Alpha_length int declare @intver numeric(15,4) select @Alpha_length = patindex('%[1234567890]%', @@VERSION) select @ver = SUBSTRING(@@VERSION,@Alpha_length,5) select @intver = CONVERT(numeric,@ver) if @intver >= 7.0  select @IsSQL7 = 1 else  select @IsSQL7 = 0 return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_SQL_Version] TO [DYNGRP]
GO
