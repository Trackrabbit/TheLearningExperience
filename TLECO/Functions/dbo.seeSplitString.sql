SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[seeSplitString](  @String nvarchar (max),  @Delimiter nvarchar (10)  ) returns @ValueTable table ([Value] nvarchar(500)) begin  declare @NextString nvarchar(4000)  declare @Pos int  declare @NextPos int  declare @CommaCheck nvarchar(1)   set @NextString = ''  set @CommaCheck = right(@String,1)    set @String = @String + @Delimiter   set @Pos = charindex(@Delimiter,@String)  set @NextPos = 1   while (@Pos <>  0)   begin  set @NextString = substring(@String,1,@Pos - 1)  if ((select COUNT(*) from @ValueTable where Value = ltrim(rtrim(UPPER(@NextString)))) = 0)  begin   insert into @ValueTable ( [Value]) Values (ltrim(rtrim(UPPER(@NextString))))  end  set @String = substring(@String,@Pos +1,len(@String))  set @NextPos = @Pos  set @Pos  = charindex(@Delimiter,@String)  end  return end    
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_payroll]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_power user]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_production planner]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_project manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_shop supervisor]
GO
GRANT SELECT ON  [dbo].[seeSplitString] TO [rpt_warehouse manager]
GO
