SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_util_parsestring]  (@query varchar(255),  @sep char(1),  @leftside varchar(255) OUTPUT,  @rightside varchar(255) OUTPUT) AS declare @pos int declare @msg varchar(255) select @pos = CHARINDEX(@sep,@query) if ( @pos > 0 AND @pos < LEN(@query) ) begin  select @leftside = RTRIM(SUBSTRING(@query,1,(@pos - 1))),  @rightside = RTRIM(SUBSTRING(@query,(@pos + 1),LEN(@query))) end else begin  select @leftside = '', @rightside = '' end  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_util_parsestring] TO [DYNGRP]
GO
