SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[syCompareVersionStrings](  @versionString1 varchar(20),  @versionString2 varchar(20)  ) RETURNS smallint AS BEGIN   declare @compareResult smallint  declare @majorVersion1 varchar(5)  declare @minorVersion1 varchar(5)  declare @buildNumber1 varchar(5)   declare @majorVersion2 varchar(5)  declare @minorVersion2 varchar(5)  declare @buildNumber2 varchar(5)  declare @major1 int  declare @minor1 int  declare @build1 int  declare @major2 int  declare @minor2 int  declare @build2 int   set @compareResult = 1  set @majorVersion1 = '0'  set @minorVersion1 = '0'  set @buildNumber1 = '0'  set @majorVersion2 = '0'  set @minorVersion2 = '0'  set @buildNumber2 = '0'  set @major1 = 0  set @minor1 = 0  set @build1 = 0  set @major2 = 0  set @minor2 = 0  set @build2 = 0  set @versionString1 = ltrim(rtrim(@versionString1)) + '.'  set @versionString2 = ltrim(rtrim(@versionString2)) + '.'   if (CHARINDEX('.', @versionString1, 0) > 0)  begin  set @majorVersion1 = substring(@versionString1,0,charindex('.',@versionString1,0))  if (ISNUMERIC(@majorVersion1) > 0)  begin  select @major1 = cast(@majorVersion1 as int)  end  select @versionString1 = substring(@versionString1,charindex('.',@versionString1,0)+ len('.'),len(@versionString1) - charindex(' ',@versionString1,0))  if (CHARINDEX('.', @versionString1, 0) > 0)  begin  set @minorVersion1 = substring(@versionString1,0,charindex('.',@versionString1,0))  if (ISNUMERIC(@minorVersion1) > 0)  begin  select @minor1 = cast(@minorVersion1 as int)  end  select @versionString1 = substring(@versionString1,charindex('.',@versionString1,0)+ len('.'),len(@versionString1) - charindex(' ',@versionString1,0))  if (CHARINDEX('.', @versionString1, 0) > 0)  begin  set @buildNumber1 = substring(@versionString1,0,charindex('.',@versionString1,0))  if (ISNUMERIC(@buildNumber1) > 0)  begin  select @build1 = cast(@buildNumber1 as int)  end  select @versionString1 = substring(@versionString1,charindex('.',@versionString1,0)+ len('.'),len(@versionString1) - charindex(' ',@versionString1,0))  end  end  end   if (CHARINDEX('.', @versionString2, 0) > 0)  begin  set @majorVersion2 = substring(@versionString2,0,charindex('.',@versionString2,0))  if (ISNUMERIC(@majorVersion2) > 0)  begin  select @major2 = cast(@majorVersion2 as int)  end  select @versionString2 = substring(@versionString2,charindex('.',@versionString2,0)+ len('.'),len(@versionString2) - charindex(' ',@versionString2,0))  if (CHARINDEX('.', @versionString2, 0) > 0)  begin  set @minorVersion2 = substring(@versionString2,0,charindex('.',@versionString2,0))  if (ISNUMERIC(@minorVersion2) > 0)  begin  select @minor2 = cast(@minorVersion2 as int)  end  select @versionString2 = substring(@versionString2,charindex('.',@versionString2,0)+ len('.'),len(@versionString2) - charindex(' ',@versionString2,0))  if (CHARINDEX('.', @versionString2, 0) > 0)  begin  set @buildNumber2 = substring(@versionString2,0,charindex('.',@versionString2,0))  if (ISNUMERIC(@buildNumber2) > 0)  begin  select @build2 = cast(@buildNumber2 as int)  end  select @versionString2 = substring(@versionString2,charindex('.',@versionString2,0)+ len('.'),len(@versionString2) - charindex(' ',@versionString2,0))  end  end  end   select @compareResult = case  when @major1 = @major2 and @minor1 = @minor2 and @build1 = @build2 then 2   when @major1 > @major2 then 2   when @major1 = @major2 and @minor1 > @minor2 then 2    when @major1 = @major2 and @minor1 = @minor2 and @build1 > @build2 then 2    else 0    end   return @compareResult end   
GO
GRANT EXECUTE ON  [dbo].[syCompareVersionStrings] TO [DYNGRP]
GO
