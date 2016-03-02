SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[POPVendAnalysisBuildQuery]  @SERIES int, @TypeID int, @QueryStr varchar(1000) output as BEGIN  declare @SqlStr3 varchar(1000)   DECLARE @SQlStr varchar(1000), @i int,@Querystring VARCHAR(8000),@s1 VARCHAR(1000),@s2 VARCHAR(1000),  @Physicalname VARCHAR(100),@FieldID int, @FilterType int,@str1 VARCHAR(1000),@str2 VARCHAR(1000),@Amt1 NUMERIC(19,5),  @Amt2 NUMERIC(19,5),@Date1 datetime,@Date2 datetime, @startValue int, @OPTION1 int, @OPTION2 int, @OPTION3 int, @OPTION4 int, @FieldDataType int   SELECT @SQlStr = '', @i = 1, @Querystring = '', @Physicalname = '', @FieldID = 0, @FilterType = 0, @str1 = '', @str2 = '', @Amt1 = 0,  @Amt2 = 0, @Date1 = NULL, @Date2 = NULL, @startValue = 0, @OPTION1 = 0, @OPTION2 = 0, @OPTION3 = 0, @OPTION4 = 0, @FieldDataType = 0  SELECT @s1 = '', @s2 = ')'   While @i <= 3  BEGIN  SELECT @OPTION1 = OPTION1,@OPTION2 = OPTION2, @OPTION3 =OPTION3,@OPTION4 = OPTION4, @Physicalname = FieldPhysicalName, @FieldID = FieldRefID, @FilterType = FilterType, @str1 = Start_Position_String, @str2 = End_Position_String,   @FieldDataType = FieldDataType,@Amt1 = STRTAMNT, @Amt2 = ENDAMNT, @Date1 = STRTDATE, @Date2 = ENDDATE, @startValue = startValue FROM CO00201 WHERE SERIES= @SERIES AND TYPEID = @TypeID AND SEQNUMBR = @i AND USERID = SYSTEM_USER  if @FilterType <> 0 and @FieldID <> 0 AND rtrim(@Physicalname) <> ''  BEGIN   IF @FieldDataType = 7   or (@TypeID = 4 AND @FieldID = 3)   set @startValue = @startValue - 1   IF (@TypeID = 4 and @Physicalname <> 'CNTRLNUM') or (@TypeID = 3 and @Physicalname <> 'SUBTOTAL') or (@TypeID = 6)  SET @Physicalname = 'A.' + @Physicalname   IF (@TypeID = 1 AND @FieldID = 1) or    (@TypeID = 2 AND (@FieldID = 3 or @FieldID = 5)) or   (@TypeID = 3 AND (@FieldID = 2 or @FieldID = 4)) or   (@TypeID = 4 AND (@FieldID = 1 or @FieldID = 5)) or   (@TypeID = 5 AND (@FieldID = 1 or @FieldID = 4))  or   (@TypeID = 6 AND (@FieldID = 1 or @FieldID = 4))   BEGIN   SELECT @SQlStr = @SQlStr + ' AND '+ RTRIM(Convert(varchar(200),@Physicalname))  exec coQueryString @FilterType,@FieldDataType,@Date1,@Date2,@Querystring out   SELECT @SQlStr = ' ' + RTRIM(@SQlStr) + ' ' + RTRIM(Convert(varchar(200),@Querystring))  END   ELSE IF (@TypeID = 1 AND (@FieldID = 2 or @FieldID = 4 or @FieldID = 5 or @FieldID = 7)) or   (@TypeID = 2 AND @FieldID = 2) or   (@TypeID = 4 AND @FieldID = 3)   BEGIN  SELECT @SQlStr = @SQlStr + ' AND '+ RTRIM(Convert(varchar(200),@Physicalname))  exec coQueryString @FilterType,@FieldDataType,@startValue,'',@Querystring out   SELECT @SQlStr = ' ' + RTRIM(@SQlStr) + ' ' + RTRIM(Convert(varchar(200),@Querystring))  END   ELSE IF (@TypeID = 1 AND @FieldID = 6) or   (@TypeID = 2 AND (@FieldID = 4 or @FieldID = 6)) or   (@TypeID = 3 AND @FieldID = 3) or   (@TypeID = 6 AND @FieldID = 5)   BEGIN  SELECT @SQlStr = @SQlStr + ' AND '+ RTRIM(Convert(varchar(200),@Physicalname))  exec coQueryString @FilterType,@FieldDataType,@Amt1,@Amt2,@Querystring out   SELECT @SQlStr = ' ' + RTRIM(@SQlStr) + ' ' + RTRIM(Convert(varchar(200),@Querystring))  END   ELSE  BEGIN  select @str1 = UPPER(RTRIM(@str1)),@str2 = UPPER(RTRIM(@str2))  exec coQueryString @FilterType,@FieldDataType,@str1,@str2,@Querystring out   IF @TypeID = 2 AND (@FieldID = 8 or @FieldID = 9)  BEGIN  SELECT @SQlStr = @SQlStr + ' AND POPRCTNM IN (SELECT POPRCTNM FROM POP10310 WHERE UPPER('+ RTRIM(Convert(varchar(200),@Physicalname)) + ') ' + RTRIM(Convert(varchar(200),@Querystring)) + ' UNION SELECT POPRCTNM FROM POP30310 WHERE UPPER('+ RTRIM(Convert(varchar(200),@Physicalname)) + ') ' + RTRIM(Convert(varchar(200),@Querystring))+')'  END  ELSE  BEGIN  SELECT @SQlStr = @SQlStr + ' AND UPPER('+ RTRIM(Convert(varchar(200),@Physicalname)) + ') ' + RTRIM(Convert(varchar(200),@Querystring))  END  END    end   SET @i = @i + 1  END   SET @SqlStr3 = ''  if @TypeID = 1   BEGIN  if (@OPTION1 = 1 AND @OPTION2 = 1) or (@OPTION1 = 0 AND @OPTION2 = 0)   set @SqlStr3 =  ' AND POP_Origin IN ( 3, 4 ) '  else if @OPTION1 = 1  set @SqlStr3 =  ' AND POP_Origin = 3 '  else if @OPTION2 = 1  set @SqlStr3 =  ' AND POP_Origin = 4 '  end  else if @TypeID = 2   BEGIN  if @OPTION1 = 1   set @s1 =  ' AND ( DCSTATUS = 4 '  if @OPTION2 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( DCSTATUS = 3 '  else  set @s1 = @s1 +  ' OR DCSTATUS = 3 '  END  if @OPTION3 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( POPTYPE IN (1,3) '  else  set @s1 = @s1 +  ' ) AND ( POPTYPE IN (1,3) '  END  ELSE  BEGIN  if @s1 = ''  set @s1 =  ' AND ( POPTYPE = 1 '  else  set @s1 = @s1 +  ' ) AND ( POPTYPE = 1 '  END   if @s1 != ''  SET @SqlStr3 = @s1 + @s2  else  SET @SqlStr3 = ''  end  else if @TypeID = 3   BEGIN  if @OPTION1 = 1   set @s1 =  ' AND ( A.DCSTATUS = 1 '  if @OPTION2 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( A.DCSTATUS = 2 '  else  set @s1 = @s1 +  ' or A.DCSTATUS = 2 '  END  if @OPTION3 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( A.DCSTATUS = 3 '  else  set @s1 = @s1 +  ' or A.DCSTATUS = 3 '  END   if @s1 != ''  SET @SqlStr3 = @s1 + @s2  else  SET @SqlStr3 = ''  end  else if @TypeID = 4   BEGIN  if @OPTION1 = 1   set @s1 =  ' AND ( B.DCSTATUS = 1 '   if @OPTION2 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( B.DCSTATUS = 2 '  else  set @s1 = @s1 +  ' or  B.DCSTATUS = 2 '  END  if @OPTION3 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND (  B.DCSTATUS = 3 '  else  set @s1 = @s1 +  ' or  B.DCSTATUS = 3 '  END  if @OPTION4 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( A.CURTRXAM = 0 '  else  set @s1 = @s1 +  ' or A.CURTRXAM = 0 '  END   if @s1 != ''  SET @SqlStr3 = @s1 + @s2  else  SET @SqlStr3 = ''  end  else if @TypeID = 5   BEGIN  if @OPTION1 = 1   set @s1 =  ' AND ( DCSTATUS = 1 '  if @OPTION2 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( DCSTATUS = 2 '  else  set @s1 = @s1 +  ' or DCSTATUS = 2 '  END  if @OPTION3 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( DCSTATUS = 3 '  else  set @s1 = @s1 +  ' or DCSTATUS = 3 '  END   if @s1 != ''  SET @SqlStr3 = @s1 + @s2  else  SET @SqlStr3 = ''  end  else if @TypeID = 6   BEGIN  if @OPTION1 = 1   set @s1 =  ' AND ( PM00400.DCSTATUS = 1 '  if @OPTION2 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( PM00400.DCSTATUS = 2 '  else  set @s1 = @s1 +  ' or PM00400.DCSTATUS = 2 '  END  if @OPTION3 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( PM00400.DCSTATUS = 3 '  else  set @s1 = @s1 +  ' or PM00400.DCSTATUS = 3 '  END  if @OPTION4 = 1  BEGIN  if @s1 = ''  set @s1 =  ' AND ( A.VOIDED = 1 '  else  set @s1 = @s1 +  ' or A.VOIDED = 1 '  END   if @s1 != ''  SET @SqlStr3 = @s1 + @s2  else  SET @SqlStr3 = ''  end   set @QueryStr =  ' ' + RTRIM(@SQlStr) + ' ' + RTRIM(@SqlStr3)  END    
GO
GRANT EXECUTE ON  [dbo].[POPVendAnalysisBuildQuery] TO [DYNGRP]
GO
