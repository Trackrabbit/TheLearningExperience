SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[wfGenerateBatchBusObjKey] (  @BACHNUMB char(15),  @BCHSOURC char(15),  @CREATDDT datetime,  @TIME1 datetime )  returns char(201)  AS  BEGIN  declare @datestring char(10)  declare @timestring char(8)  declare @hour tinyint, @minute tinyint, @second tinyint  declare @hourstring char(2), @minutestring char(2), @secondstring char(2)  declare @wfBusObjKey char(201)  select @datestring=convert(char(4),year(@CREATDDT))+'/'+  rtrim(convert(char(2),month(@CREATDDT)))+'/'+  rtrim(convert(char(2),day(@CREATDDT)))   select @hour=datepart(hour,@TIME1),  @minute=datepart(minute,@TIME1),  @second=datepart(second,@TIME1)  if @hour<10  select @hourstring='0'+rtrim(convert(char(2),@hour))  else  select @hourstring=rtrim(convert(char(2),@hour))   if @minute<10  select @minutestring='0'+rtrim(convert(char(2),@minute))  else  select @minutestring=rtrim(convert(char(2),@minute))   if @second<10  select @secondstring='0'+rtrim(convert(char(2),@second))  else  select @secondstring=rtrim(convert(char(2),@second))   select @timestring=@hourstring+':'+@minutestring+':'+@secondstring  select @wfBusObjKey=rtrim(@BACHNUMB)+'~'+rtrim(@BCHSOURC)+'~'+rtrim(@datestring)+'~'+rtrim(@timestring)   return @wfBusObjKey END    
GO
GRANT EXECUTE ON  [dbo].[wfGenerateBatchBusObjKey] TO [DYNGRP]
GO
