SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_Dynamics_SalesSerialLot] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqlstring11 varchar(8000),  @sqlstring12 varchar(8000),  @sqlstring13 varchar(8000),  @sqlstring14 varchar(8000),  @sqlstring15 varchar(8000),  @sqlstring16 varchar(8000),  @sqlstring17 varchar(8000),  @sqlstring18 varchar(8000),  @sqlstring19 varchar(8000),  @sqlstring20 varchar(8000),  @sqlstring21 varchar(8000),  @sqlstring22 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @SOP_Type varchar(255), @SOP_Number varchar(255), @Line_Item_Sequence varchar(255), @Component_Sequence varchar(255), @QTY_Type varchar(255), @Serial_Lot_Sequence_Number varchar(255), @Posted varchar(255), @Serial_Lot_Number varchar(255), @Item_Number varchar(255), @Serial_Lot_QTY varchar(255), @DrillBack_Base_Url varchar(255), @Item_Number_For_DrillBack varchar(255), @SOP_Number_For_DrillBack varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)  select @I_iDictID = 1493 select @I_iMessageNumber = 22600 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Type output   select @I_iDictID = 1493 select @I_iMessageNumber = 22601 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Number output   select @I_iDictID = 1493 select @I_iMessageNumber = 24026 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Line_Item_Sequence output   select @I_iDictID = 1493 select @I_iMessageNumber = 24008 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Component_Sequence output   select @I_iDictID = 1493 select @I_iMessageNumber = 31105 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @QTY_Type output   select @I_iDictID = 0 select @I_iMessageNumber = 22007 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Serial_Lot_Sequence_Number output   select @I_iDictID = 1493 select @I_iMessageNumber = 23379 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Posted output   select @I_iDictID = 0 select @I_iMessageNumber = 22008 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Serial_Lot_Number output   select @I_iDictID = 1493 select @I_iMessageNumber = 24022 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Item_Number output   select @I_iDictID = 0 select @I_iMessageNumber = 22009 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Serial_Lot_QTY output   select @I_iDictID = 1493 select @I_iMessageNumber = 24022 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Item_Number_For_DrillBack output   select @I_iDictID = 1493 select @I_iMessageNumber = 22601 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Number_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[SalesSerialLot]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[SalesSerialLot] '  select @sqldefaultstring =   'CREATE VIEW SalesSerialLot AS ' +   'select ' +   '''' + @SOP_Type + ''' = dbo.DYN_FUNC_SOP_Type([''Sales Serial/Lot Work and History''].[SOPTYPE]), ' + 'rtrim([''Sales Serial/Lot Work and History''].[SOPNUMBE]) as ''' + @SOP_Number + ''', ' +  '[''Sales Serial/Lot Work and History''].[LNITMSEQ] as ''' + @Line_Item_Sequence + ''', ' + '[''Sales Serial/Lot Work and History''].[CMPNTSEQ] as ''' + @Component_Sequence + ''', ' + '''' + @QTY_Type + ''' = dbo.DYN_FUNC_QTY_Type([''Sales Serial/Lot Work and History''].[QTYTYPE]), ' + '[''Sales Serial/Lot Work and History''].[SLTSQNUM] as ''' + @Serial_Lot_Sequence_Number + ''', ' + '''' + @Posted + ''' = dbo.DYN_FUNC_Boolean_All([''Sales Serial/Lot Work and History''].[POSTED]), ' + 'rtrim([''Sales Serial/Lot Work and History''].[SERLTNUM]) as ''' + @Serial_Lot_Number + ''', ' + 'rtrim([''Sales Serial/Lot Work and History''].[ITEMNMBR]) as ''' + @Item_Number + ''', ' + '[''Sales Serial/Lot Work and History''].[SERLTQTY] as ''' + @Serial_Lot_QTY + ''', '  select @sqlstring1 =  '''' + @Item_Number_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppItemID(1,[''Sales Serial/Lot Work and History''].[ITEMNMBR],'''' ), '+ 'case ISNULL( [''Sales Serial/Lot Work and History''].[TRXSORCE],'''') WHEN '''' ' +  ' THEN '''+ @DrillBack_Base_Url + ''' +dbo.dgppSalesOrder(1,1,11,'''',0,0,'''','''',0,'''',[''Sales Serial/Lot Work and History''].[SOPTYPE],[''Sales Serial/Lot Work and History''].[SOPNUMBE] ) ' + ' ELSE '''+ @DrillBack_Base_Url + ''' +dbo.dgppSalesOrder(1,3,11,'''',0,0,'''','''',0,'''',[''Sales Serial/Lot Work and History''].[SOPTYPE],[''Sales Serial/Lot Work and History''].[SOPNUMBE] ) ' + 'END as ''' + @SOP_Number_For_DrillBack + ''' '  select @sqlstring2 =  'from [SOP10201] as [''Sales Serial/Lot Work and History''] with (NOLOCK) '   select @sqlaccessstring =   'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_warehouse manager]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_order processor]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_customer service rep]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_shipping and receiving]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_sales manager]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[SalesSerialLot] TO [rpt_operations manager]'  exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqlstring11+' '+@sqlstring12+' '+@sqlstring13+' '+@sqlstring14+' '+@sqlstring15+' '+@sqlstring16+' '+@sqlstring17+' '+@sqlstring18+' '+@sqlstring19+' '+@sqlstring20+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_Dynamics_SalesSerialLot] TO [DYNGRP]
GO