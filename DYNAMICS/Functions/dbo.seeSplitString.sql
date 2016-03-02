SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[seeSplitString](  @String nvarchar (max),  @Delimiter nvarchar (10)  ) returns @ValueTable table ([Value] nvarchar(500)) begin  declare @NextString nvarchar(4000)  declare @Pos int  declare @NextPos int  declare @CommaCheck nvarchar(1)   set @NextString = ''  set @CommaCheck = right(@String,1)    set @String = @String + @Delimiter   set @Pos = charindex(@Delimiter,@String)  set @NextPos = 1   while (@Pos <>  0)   begin  set @NextString = substring(@String,1,@Pos - 1)  if ((select COUNT(*) from @ValueTable where Value = ltrim(rtrim(UPPER(@NextString)))) = 0)  begin   insert into @ValueTable ( [Value]) Values (ltrim(rtrim(UPPER(@NextString))))  end  set @String = substring(@String,@Pos +1,len(@String))  set @NextPos = @Pos  set @Pos  = charindex(@Delimiter,@String)  end  return end    
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_all user]
GO
