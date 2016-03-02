SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppRMBatchEntry]  (  @action int,  @BACHNUMB char(15),  @BCHSOURC char(15),  @CREATDDT datetime,  @TIME1 datetime  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)   select @FunctionName = 'OpenRMBatchEntry'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&BACHNUMB=' + ltrim(@BACHNUMB)   + '&BCHSOURC=' + ltrim(@BCHSOURC)  + '&CREATDDT=' + ltrim(@CREATDDT)  + '&TIME1=' + ltrim(@TIME1)  + '&PREWIN=1'  + '&USEDATEFROM=0'  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppRMBatchEntry] TO [DYNGRP]
GO
