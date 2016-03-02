SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[coQueryString]  @FilterType int, @FilterDataType int, @FromValue nvarchar(40), @ToValue nvarchar(40), @Querystring varchar(8000) out  AS  begin  SELECT @Querystring = '',@FromValue = REPLACE(@FromValue, '''',''''''), @ToValue = REPLACE(@ToValue, '''','''''')   if @FilterDataType in (1,3,4,8)   SET @Querystring =   case @FilterType   WHEN 1 THEN ' = '''+@FromValue+''' '  WHEN 2 THEN ' BETWEEN '''+@FromValue+''' AND '''+@ToValue+''' '  WHEN 3 THEN ' != '''+@FromValue+''' '  WHEN 4 THEN  ' > '''+@FromValue+''' '  ELSE  ' < '''+@FromValue+''' '  END  else if @FilterDataType in (6,7)   SET @Querystring =   case @FilterType   WHEN 1 THEN ' = '''+@FromValue+''' '  ELSE  ' != '''+@FromValue+''' '  END   else   SET @Querystring =   case @FilterType   WHEN 1 THEN ' LIKE ''%'+@FromValue+'%'' '  WHEN 2 THEN ' = '''+@FromValue+''' '  WHEN 3 THEN ' LIKE '''+@FromValue+'%'' '  WHEN 4 THEN ' BETWEEN '''+@FromValue+''' AND '''+@ToValue+''' '  WHEN 5 THEN ' != '''+@FromValue+''' '  WHEN 6 THEN  ' > '''+@FromValue+''' '  ELSE  ' < '''+@FromValue+''' '  END  end    
GO
GRANT EXECUTE ON  [dbo].[coQueryString] TO [DYNGRP]
GO
