SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_1099_Box_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000)   select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_1099_Box_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_1099_Box_Type] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_1099_Box_Type] (@i1099Type integer, @i1099BoxNumber integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oBoxtextanddescription varchar(100), ' + '@Boxtext varchar(5), ' + '@Boxdescription varchar(40), ' + '@Offset integer ' + 'if @i1099Type > 1 ' + 'begin ' + ' select @Boxdescription = rtrim(TEN99BOXDSCRPTN), ' + '   @Boxtext = rtrim(TEN99BOXTEXT) ' + ' from PM40104 ' + ' where TEN99TYPE = @i1099Type - 1' + ' and TEN99BOXNUMBER = @i1099BoxNumber ' + ' select @oBoxtextanddescription = @Boxtext + '' '' ' + ' if @Boxdescription <> ''''' +  '  select @oBoxtextanddescription = @oBoxtextanddescription + @Boxdescription ' + ' else ' + '  begin ' + '   select @Offset = ' + '   case  ' + '    when @i1099Type = 2 then 8500 ' +  '    when @i1099Type = 3 then 8530 ' +  '    when @i1099Type = 4 then 8560 ' +  '   end ' + '   select @Boxdescription = ' + '    rtrim(SQL_MSG) ' + '     from ' + '       DYNAMICS.dbo.MESSAGES ' + '     WITH (NOLOCK) ' + '     where ' + '        MSGNUM = @Offset + @i1099BoxNumber ' + '     and ' + '        Language_ID = ' + rtrim(str(@iLanguageID)) +  '   select @oBoxtextanddescription = @oBoxtextanddescription + @Boxdescription ' +  '  end ' +  'end ' +  'else ' + ' select @oBoxtextanddescription = '''' '+ 'RETURN(@oBoxtextanddescription) ' +  'END '   exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_1099_Box_Type] TO [DYNGRP]
GO
