SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeItemQuantitiesDetail_Create] @iLanguageID int   as   set nocount on   declare @sqldropstring varchar(400),   @sqlstring1 varchar(8000),   @sqlstring2 varchar(8000),   @sqlstring3 varchar(8000),   @sqlstring4 varchar(8000),   @sqlstring5 varchar(8000),   @sqlstring6 varchar(8000),   @sqlstring7 varchar(8000),   @sqlstring8 varchar(8000),   @sqlstring9 varchar(8000),   @sqlstring10 varchar(8000),   @sqljoinstring varchar(8000),   @sqlaccessstring varchar(2000),   @tNumberSegments int,   @tSegment int,   @I_iDictID int,   @I_iLangID int,   @I_iMessageNumber int,   @I_iAliasMessageNumber int,   @I_iIntegerValue int,  @Item_Number varchar(255), @Location_Code varchar(255) select @I_iDictID = 1493 select @I_iMessageNumber = 24100 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Item_Number output   select @I_iDictID = 1493 select @I_iMessageNumber = 24101 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgStringForProcs  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Location_Code output   select @sqldropstring =   'IF EXISTS (SELECT * FROM   sys.objects WHERE  object_id = OBJECT_ID(N''[dbo].[seeItemQuantitiesDetail]'') AND type in ( N''P'', N''PC'' ))  ' +   '  DROP PROCEDURE [dbo].[seeItemQuantitiesDetail]  '   select @sqlstring1 =   'create procedure dbo.seeItemQuantitiesDetail '+   '  @ItemNumber varchar(50), '+   '  @LocationCode varchar(50) '+   'as '+   'select *  '+   ' from ItemQuantities  '+   ' where ['+@Item_Number+'] = @ItemNumber  '+   '  and ['+@Location_Code+'] = @LocationCode '  select @sqlaccessstring =   'GRANT execute ON [dbo].[seeItemQuantitiesDetail] TO [rpt_warehouse manager],[rpt_materials manager],[rpt_operations manager],[rpt_shipping and receiving], '+  ' [rpt_order processor],[rpt_purchasing manager],[rpt_purchasing agent],[rpt_executive] '  exec (@sqldropstring)   exec (@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10)   exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[seeItemQuantitiesDetail_Create] TO [DYNGRP]
GO
