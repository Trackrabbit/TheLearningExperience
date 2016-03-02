SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeSVCOpenRMACountsDetail_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,  @SVC_Return_Type varchar(255), @Entry_Date varchar(255)  select @I_iDictID = 949 select @I_iMessageNumber = 26807 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_Return_Type output select @I_iDictID = 949 select @I_iMessageNumber = 26808 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Entry_Date output    select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeSVCOpenRMACountsDetail]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeSVCOpenRMACountsDetail]  '   select @sqlstring1 =   'create procedure dbo.seeSVCOpenRMACountsDetail '+   ' @DocumentDate datetime = null, '+   ' @RMAType varchar(10) = null '+   'as '+   'if @DocumentDate is null  '+   ' if @RMAType is null '+   ' select *  '+   ' from RMAs  '+   ' else '+   ' select *  '+   ' from RMAs '+   ' where ['+@SVC_Return_Type+'] = @RMAType  '+   'if @DocumentDate is not null  '+   ' if @RMAType is null '+   ' select *  '+   ' from RMAs '+   ' where (['+@Entry_Date+'] >= @DocumentDate )  '+   ' else '+   ' select *  '+   ' from RMAs '+   ' where ['+@SVC_Return_Type+'] = @RMAType   '+   ' and (['+@Entry_Date+'] >= @DocumentDate )  '  select @sqlaccessstring =   'GRANT execute ON [dbo].[seeSVCOpenRMACountsDetail] TO [rpt_dispatcher], [rpt_executive], [rpt_power user] '   exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeSVCOpenRMACountsDetail_Create] TO [DYNGRP]
GO
