SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeTopCustomerBalances_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,  @Customer_Number varchar(255), @Customer_Balance varchar(255)  select @I_iDictID = 1493 select @I_iMessageNumber = 22900 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_Number output   select @I_iDictID = 1493 select @I_iMessageNumber = 23902 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_Balance output    select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeTopCustomerBalances]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeTopCustomerBalances]  '   select @sqlstring1 =   'create procedure dbo.seeTopCustomerBalances '+   '  @MaxCustomers int = NULL '+   'as '+    'if @MaxCustomers <> 0 '+   ' select top (select @MaxCustomers) ['+@Customer_Number+'], ['+@Customer_Balance+'] from Customers with (noLock) '+   '  order by ['+@Customer_Balance+'] desc, ['+@Customer_Number+'] asc '+   'else '+   ' select ['+@Customer_Number+'], ['+@Customer_Balance+'] from Customers with (noLock) '+   '  order by ['+@Customer_Balance+'] desc, ['+@Customer_Number+'] asc '  select @sqlaccessstring =   'GRANT execute ON [dbo].[seeTopCustomerBalances] TO [rpt_executive], [rpt_accounts receivable coordinator], [rpt_collections manager], [rpt_order processor], [rpt_accounting manager] '   exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeTopCustomerBalances_Create] TO [DYNGRP]
GO
