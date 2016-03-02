SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_FieldService_RTVSerialLot_Work] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @RTV_Number varchar(255), @RTV_Line varchar(255), @QTY_Type varchar(255), @Serial_Lot_Sequence_Number varchar(255), @Serial_Number varchar(255), @Return_Serial_Number varchar(255), @Equipment_ID varchar(255), @DrillBack_Base_Url_For_FS varchar(255), @Equipment_ID_For_DrillBack varchar(255)  select @DrillBack_Base_Url_For_FS = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),949)  select @I_iDictID = 949 select @I_iMessageNumber = 30000 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Number output   select @I_iDictID = 949 select @I_iMessageNumber = 30001 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RTV_Line output   select @I_iDictID = 1493 select @I_iMessageNumber = 31105 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @QTY_Type output   select @I_iDictID = 0 select @I_iMessageNumber = 22007 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Serial_Lot_Sequence_Number  output   select @I_iDictID = 949 select @I_iMessageNumber = 26201 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Serial_Number output   select @I_iDictID = 0 select @I_iMessageNumber = 22035 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Serial_Number output   select @I_iDictID = 949 select @I_iMessageNumber = 26200 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Equipment_ID output   select @I_iDictID = 949 select @I_iMessageNumber = 26200 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Equipment_ID_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[RTVSerialLot_Work]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[RTVSerialLot_Work] '  select @sqldefaultstring =   'CREATE VIEW RTVSerialLot_Work AS ' +   'select ' +   'rtrim([''SVC_RTV_Serial_Lot_Work''].[RTV_Number]) as ''' + @RTV_Number + ''', ' + '[''SVC_RTV_Serial_Lot_Work''].[RTV_Line] as ''' + @RTV_Line + ''', ' + '''' + @QTY_Type + ''' = dbo.DYN_FUNC_QTY_Type([''SVC_RTV_Serial_Lot_Work''].[QTYTYPE]), ' +  '[''SVC_RTV_Serial_Lot_Work''].[SLTSQNUM] as ''' + @Serial_Lot_Sequence_Number + ''', ' + 'rtrim([''SVC_RTV_Serial_Lot_Work''].[SERLNMBR]) as ''' + @Serial_Number + ''', ' + 'rtrim([''SVC_RTV_Serial_Lot_Work''].[Return_Serial_Number]) as ''' + @Return_Serial_Number + ''', ' + '[''SVC_RTV_Serial_Lot_Work''].[EQUIPID] as ''' + @Equipment_ID + ''', '   select @sqlstring1 =  '''' + @Equipment_ID_For_DrillBack + ''' = ''' + @DrillBack_Base_Url_For_FS + ''' +dbo.dgppEquipmentID(1,[''SVC_RTV_Serial_Lot_Work''].[EQUIPID] ) '  select @sqljoinstring =   'from [SVC05602] as [''SVC_RTV_Serial_Lot_Work''] with (NOLOCK) '   select @sqlaccessstring =   'GRANT SELECT ON [dbo].[RTVSerialLot_Work] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[RTVSerialLot_Work] TO [rpt_customer service rep]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_FieldService_RTVSerialLot_Work] TO [DYNGRP]
GO
