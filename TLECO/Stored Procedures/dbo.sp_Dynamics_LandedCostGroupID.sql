SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_Dynamics_LandedCostGroupID] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @Landed_Cost_Group_ID varchar(255), @Description varchar(255), @Landed_Cost_ID varchar(255), @Landed_Cost_Description varchar(255), @Vendor_ID varchar(255), @Cost_Calculation_Method varchar(255), @Invoice_Match varchar(255), @Accrued_Purchases_Account varchar(255), @Currency_ID varchar(255), @Rate_Type_ID varchar(255), @Currency_Decimals varchar(255), @Functional_Currency_Decimals varchar(255), @Revalue_Inventory_for_Cost_Variance varchar(255), @Tolerance_Percentage varchar(255), @Purchase_Price_Variance_Account varchar(255), @Originating_Amount varchar(255), @Originating_Percent varchar(255), @DrillBack_Base_Url varchar(255), @Vendor_ID_For_DrillBack varchar(255), @Accrued_Purchases_Account_For_DrillBack varchar(255), @Purchase_Price_Variance_Account_For_DrillBack varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)  select @I_iDictID = 1493 select @I_iMessageNumber = 25032 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Landed_Cost_Group_ID output  select @I_iDictID = 1493 select @I_iMessageNumber = 25033 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Description output  select @I_iDictID = 1493 select @I_iMessageNumber = 25034 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Landed_Cost_ID output  select @I_iDictID = 1493 select @I_iMessageNumber = 25035 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Landed_Cost_Description output  select @I_iDictID = 1493 select @I_iMessageNumber = 25036 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Vendor_ID output  select @I_iDictID = 1493 select @I_iMessageNumber = 25037 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Cost_Calculation_Method output  select @I_iDictID = 1493 select @I_iMessageNumber = 25040 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Invoice_Match output  select @I_iDictID = 1493 select @I_iMessageNumber = 25041 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Accrued_Purchases_Account output  select @I_iDictID = 1493 select @I_iMessageNumber = 25042 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_ID output  select @I_iDictID = 1493 select @I_iMessageNumber = 25043 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Rate_Type_ID output  select @I_iDictID = 1493 select @I_iMessageNumber = 25044 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_Decimals output  select @I_iDictID = 1493 select @I_iMessageNumber = 25045 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Functional_Currency_Decimals output  select @I_iDictID = 1493 select @I_iMessageNumber = 25046 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Revalue_Inventory_for_Cost_Variance output  select @I_iDictID = 1493 select @I_iMessageNumber = 25047 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Tolerance_Percentage output  select @I_iDictID = 1493 select @I_iMessageNumber = 25048 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Purchase_Price_Variance_Account output   select @I_iDictID = 0 select @I_iMessageNumber = 22084 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Amount output  select @I_iDictID = 0 select @I_iMessageNumber = 22085 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Originating_Percent output   select @I_iDictID = 1493 select @I_iMessageNumber = 25036 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Vendor_ID_For_DrillBack output   select @I_iDictID = 1493 select @I_iMessageNumber = 25041 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Accrued_Purchases_Account_For_DrillBack output   select @I_iDictID = 1493 select @I_iMessageNumber = 25048 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Purchase_Price_Variance_Account_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[LandedCostGroupID]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[LandedCostGroupID] '  select @sqldefaultstring =   'CREATE VIEW LandedCostGroupID AS ' +   'select ' +   'rtrim([''Inventory Landed Cost Group''].[Landed_Cost_Group_ID]) as ''' + @Landed_Cost_Group_ID + ''', ' + 'rtrim([''Inventory Landed Cost Group''].[Long_Description]) as ''' + @Description + ''', ' + 'rtrim([''Inventory Landed Cost Group Details''].[Landed_Cost_ID]) as ''' + @Landed_Cost_ID + ''', '   select @sqlstring1 =   '(select rtrim([ACTNUMST]) from [GL00105] as [''Account Index Master''] where [''Account Index Master''].[ACTINDX] = [''Inventory Landed Cost''].[ACPURIDX]) as ''' + @Accrued_Purchases_Account + ''', ' +  '''' + @Cost_Calculation_Method + ''' = dbo.DYN_FUNC_Cost_Calculation_Method([''Inventory Landed Cost''].[CALCMTHD]), ' +  '''' + @Currency_Decimals + ''' = dbo.DYN_FUNC_Currency_Decimals([''Inventory Landed Cost''].[ODECPLCU]), ' +  'rtrim([''Inventory Landed Cost''].[CURNCYID]) as ''' + @Currency_ID + ''', ' +  '''' + @Functional_Currency_Decimals + ''' = dbo.DYN_FUNC_Functional_Currency_Decimals([''Inventory Landed Cost''].[DECPLCUR]), ' +  '''' + @Invoice_Match + ''' = dbo.DYN_FUNC_Boolean_All([''Inventory Landed Cost''].[Invoice_Match]), ' +  'rtrim([''Inventory Landed Cost''].[Long_Description]) as ''' + @Landed_Cost_Description + ''', ' +  '(select rtrim([ACTNUMST]) from [GL00105] as [''Account Index Master''] where [''Account Index Master''].[ACTINDX] = [''Inventory Landed Cost''].[PURPVIDX]) as ''' + @Purchase_Price_Variance_Account + ''', ' +  'rtrim([''Inventory Landed Cost''].[RATETPID]) as ''' + @Rate_Type_ID + ''', ' +  '''' + @Revalue_Inventory_for_Cost_Variance + ''' = dbo.DYN_FUNC_Boolean_All([''Inventory Landed Cost''].[Revalue_Inventory]), ' +  '[''Inventory Landed Cost''].[Tolerance_Percentage] as ''' + @Tolerance_Percentage + ''', ' +  'rtrim([''Inventory Landed Cost''].[VENDORID]) as ''' + @Vendor_ID + ''', ' + '[''Inventory Landed Cost''].[Orig_Landed_Cost_Amount] as ''' + @Originating_Amount + ''', ' + '[''Inventory Landed Cost''].[Calculation_Percentage]/1000 as ''' + @Originating_Percent + ''', '  select @sqlstring2 =  '''' + @Accrued_Purchases_Account_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppAccountIndex(1,[''Inventory Landed Cost''].[ACPURIDX] ), '+ '''' + @Purchase_Price_Variance_Account_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppAccountIndex(1,[''Inventory Landed Cost''].[PURPVIDX] ), '+ '''' + @Vendor_ID_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppVendorID(1,[''Inventory Landed Cost''].[VENDORID] ) '  select @sqljoinstring =   'from [IV41101] as [''Inventory Landed Cost Group''] with (NOLOCK) '   + 'left outer join [IV41102] as [''Inventory Landed Cost Group Details''] with (NOLOCK) on '   + '[''Inventory Landed Cost Group''].[Landed_Cost_Group_ID] = [''Inventory Landed Cost Group Details''].[Landed_Cost_Group_ID] '   + 'left outer join [IV41100] as [''Inventory Landed Cost''] with (NOLOCK) on '   + '[''Inventory Landed Cost Group Details''].[Landed_Cost_ID] = [''Inventory Landed Cost''].[Landed_Cost_ID] '   select @sqlaccessstring =   'GRANT  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[LandedCostGroupID] TO [DYNGRP] '  select @sqlaccessstring =   'GRANT SELECT ON [dbo].[LandedCostGroupID] TO [rpt_purchasing manager]' + 'GRANT SELECT ON [dbo].[LandedCostGroupID] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[LandedCostGroupID] TO [rpt_operations manager]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_Dynamics_LandedCostGroupID] TO [DYNGRP]
GO
