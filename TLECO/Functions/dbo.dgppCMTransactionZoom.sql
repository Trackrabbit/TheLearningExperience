SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppCMTransactionZoom]   (   @action INT,   @RecordNum NUMERIC(19,5)   )  RETURNS varchar(2000)  AS  BEGIN   DECLARE @ActionType VARCHAR(15),   @FunctionName VARCHAR(20),   @URIstring VARCHAR(255)    SELECT @FunctionName = 'OpenCMZoom'    IF @action=1   SELECT @ActionType = 'OPEN'   ELSE   SELECT @ActionType = 'OPEN'    SELECT @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&CMRECNUM=' + ltrim(str(abs(@RecordNum)))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppCMTransactionZoom] TO [DYNGRP]
GO
