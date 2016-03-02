SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeEmailAddress] @Filter varchar(max), @MasterType varchar(10)  as   declare @FilterTable table (Value nvarchar(500)) declare @emailString VARCHAR(MAX)   insert into @FilterTable select * from dbo.seeSplitString(@Filter, ',')  set @emailString = ''  if @MasterType = 'CUS' begin  SELECT @emailString = @emailString + ltrim(rtrim(a.CUSTNMBR)) + '|' + ltrim(rtrim(isnull(Messenger_Address, ''))) + ';'  from @FilterTable c inner join RM00101 a on c.Value = a.CUSTNMBR  left outer join SY01200 b on b.Master_ID = a.CUSTNMBR  and b.ADRSCODE = a.ADRSCODE  and b.Master_Type = 'CUS' end  if @MasterType = 'SLP' begin  SELECT @emailString = @emailString + ltrim(rtrim(a.SLPRSNID)) + '|' + ltrim(rtrim(isnull(Messenger_Address, ''))) + ';'  from @FilterTable c inner join RM00301 a on c.Value = a.SLPRSNID  left outer join SY01200 b on b.Master_ID = a.SLPRSNID  and b.Master_Type = 'SLP' end  if @MasterType = 'VEN' begin  SELECT @emailString = @emailString + ltrim(rtrim(a.VENDORID)) + '|' + ltrim(rtrim(isnull(Messenger_Address, ''))) + ';'  from @FilterTable c inner join PM00200 a on c.Value = a.VENDORID  left outer join SY01200 b on b.Master_ID = a.VENDORID  and b.ADRSCODE = a.VADDCDPR  and b.Master_Type = 'VEN' end  if @MasterType = 'EMP' begin   SELECT @emailString = @emailString + ltrim(rtrim(a.EMPLOYID)) + '|' + ltrim(rtrim(isnull(Messenger_Address, ''))) + ';'  from @FilterTable c inner join UPR00100 a on c.Value = a.EMPLOYID  left outer join SY01200 b on b.Master_ID = a.EMPLOYID  and b.ADRSCODE = a.ADRSCODE  and b.Master_Type = 'EMP' end  if @emailString <> ''  begin  SET @emailString = Left(@emailString, Len(@emailString)-1) end select @emailString as EmailString    
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_customer service rep]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_production manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_production planner]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_project manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_purchasing agent]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_purchasing manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_sales manager]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_shop supervisor]
GO
GRANT EXECUTE ON  [dbo].[seeEmailAddress] TO [rpt_warehouse manager]
GO
