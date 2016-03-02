SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_Dynamics_PurchaseRequisitions] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,   @Requisition_Number varchar(255), @Description varchar(255), @Status varchar(255), @Document_Date varchar(255), @Required_Date varchar(255), @Requested_By varchar(255), @Document_Amount varchar(255), @Comment_ID varchar(255), @Primary_Shipto_Address_ID varchar(255), @Company_Name varchar(255), @Contact varchar(255), @Address_1 varchar(255), @Address_2 varchar(255), @Address_3 varchar(255), @City varchar(255), @Document_Status varchar(255), @State varchar(255), @Zip_Code varchar(255), @Country_Code varchar(255), @Country varchar(255), @Phone_1 varchar(255), @Phone_2 varchar(255), @Phone_3 varchar(255), @Fax varchar(255), @Created_Date varchar(255), @Modified_Date varchar(255), @User_To_Enter varchar(255), @Voided varchar(255), @Workflow_Status varchar(255), @Windows_Account varchar(255), @User_Defined_1 varchar(255), @User_Defined_2 varchar(255), @Invalid_Data_Flag varchar(255), @POPRequisitionNumber_For_DrillBack varchar(255),  @DrillBack_Base_Url varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)  select @I_iAliasMessageNumber = 0  select @I_iDictID = 414  select @I_iMessageNumber = 26116  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Requisition_Number output select @I_iDictID = 1493  select @I_iMessageNumber = 24409  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Description output select @I_iDictID = 258  select @I_iMessageNumber = 32409  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Status output select @I_iDictID = 1493  select @I_iMessageNumber = 22606  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Document_Date output select @I_iDictID = 1493  select @I_iMessageNumber = 22811  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Required_Date output select @I_iDictID = 1493  select @I_iMessageNumber = 26324  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Requested_By output select @I_iDictID = 1493  select @I_iMessageNumber = 22681  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Document_Amount output select @I_iDictID = 1493  select @I_iMessageNumber = 22602  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Document_Status output select @I_iDictID = 1493  select @I_iMessageNumber = 22700  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Comment_ID output select @I_iDictID = 0  select @I_iMessageNumber = 22246  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Primary_Shipto_Address_ID output select @I_iDictID = 1493  select @I_iMessageNumber = 22830  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Company_Name output select @I_iDictID = 1493  select @I_iMessageNumber = 22831  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Contact output select @I_iDictID = 1493  select @I_iMessageNumber = 22406  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_1 output select @I_iDictID = 1493  select @I_iMessageNumber = 22407  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_2 output select @I_iDictID = 1493  select @I_iMessageNumber = 22408  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_3 output select @I_iDictID = 1493  select @I_iMessageNumber = 22409  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @City output select @I_iDictID = 1493  select @I_iMessageNumber = 22410  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @State output select @I_iDictID = 1493  select @I_iMessageNumber = 22412  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Zip_Code  output select @I_iDictID = 1493  select @I_iMessageNumber = 24360  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Country_Code output select @I_iDictID = 1493  select @I_iMessageNumber = 22411  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Country output select @I_iDictID = 1493  select @I_iMessageNumber = 22839  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Phone_1 output select @I_iDictID = 1493  select @I_iMessageNumber = 22840  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Phone_2 output select @I_iDictID = 1493  select @I_iMessageNumber = 22778  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Phone_3 output select @I_iDictID = 1493  select @I_iMessageNumber = 22841  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Fax output select @I_iDictID = 1493  select @I_iMessageNumber = 22517  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Created_Date output select @I_iDictID = 1493  select @I_iMessageNumber = 22518  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Modified_Date output select @I_iDictID = 1493  select @I_iMessageNumber = 22708  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_To_Enter output select @I_iDictID = 1493  select @I_iMessageNumber = 23325  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Voided output select @I_iDictID = 0  select @I_iMessageNumber = 22236  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Workflow_Status output select @I_iDictID = 0  select @I_iMessageNumber = 22235  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Windows_Account output select @I_iDictID = 1493  select @I_iMessageNumber = 22441  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_1 output select @I_iDictID = 1493  select @I_iMessageNumber = 22442  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_2 output select @I_iDictID = 0  select @I_iMessageNumber = 22237  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Invalid_Data_Flag output  select @I_iDictID = 414  select @I_iMessageNumber = 26116 select @I_iAliasMessageNumber = 11111 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @POPRequisitionNumber_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[PurchaseRequisitions]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[PurchaseRequisitions] '  select @sqldefaultstring =   'CREATE VIEW PurchaseRequisitions AS ' +   'select ' +   'rtrim([''Purchasing Requisition Work''].[POPRequisitionNumber]) as ''' + @Requisition_Number + ''', ' + 'rtrim([''Purchasing Requisition Work''].[RequisitionDescription]) as ''' + @Description + ''', ' + '''' + @Status + ''' = dbo.DYN_FUNC_Requisition_Status([''Purchasing Requisition Work''].[RequisitionStatus]), ' + '[''Purchasing Requisition Work''].[DOCDATE] as ''' + @Document_Date + ''', ' +  '[''Purchasing Requisition Work''].[REQDATE] as ''' + @Required_Date + ''', ' +  'rtrim([''Purchasing Requisition Work''].[REQSTDBY]) as ''' + @Requested_By + ''', ' + '[''Purchasing Requisition Work''].[DOCAMNT] as ''' + @Document_Amount + ''', '  select @sqlstring1 =   'rtrim([''Purchasing Requisition Work''].[ADDRESS1]) as ''' + @Address_1 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[ADDRESS2]) as ''' + @Address_2 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[ADDRESS3]) as ''' + @Address_3 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[CCode]) as ''' + @Country_Code + ''', ' +  'rtrim([''Purchasing Requisition Work''].[CITY]) as ''' + @City + ''', ' +  'rtrim([''Purchasing Requisition Work''].[CONTACT]) as ''' + @Contact + ''', ' +  'rtrim([''Purchasing Requisition Work''].[COMMNTID]) as ''' + @Comment_ID + ''', ' +  'rtrim([''Purchasing Requisition Work''].[COUNTRY]) as ''' + @Country + ''', ' +  'rtrim([''Purchasing Requisition Work''].[CMPNYNAM]) as ''' + @Company_Name + ''', ' + '[''Purchasing Requisition Work''].[CREATDDT] as ''' + @Created_Date + ''', ' +  '''' + @Document_Status + ''' = dbo.DYN_FUNC_Requisition_Document_Status(1), ' +  'rtrim([''Purchasing Requisition Work''].[FAX]) as ''' + @Fax + ''', ' +  '''' + @Invalid_Data_Flag + ''' = case [''Purchasing Requisition Work''].[Flags] when 0 then dbo.DYN_FUNC_Boolean_All(0) else dbo.DYN_FUNC_Boolean_All(1) end, ' + '[''Purchasing Requisition Work''].[MODIFDT] as ''' + @Modified_Date + ''', ' +  'rtrim([''Purchasing Requisition Work''].[PHONE1]) as ''' + @Phone_1 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[PHONE2]) as ''' + @Phone_2 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[PHONE3]) as ''' + @Phone_3 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[PRSTADCD]) as ''' + @Primary_Shipto_Address_ID + ''', ' +  'rtrim([''Purchasing Requisition Work''].[STATE]) as ''' + @State + ''', ' +  'rtrim([''Purchasing Requisition Work''].[USERDEF1]) as ''' + @User_Defined_1 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[USERDEF1]) as ''' + @User_Defined_2 + ''', ' +  'rtrim([''Purchasing Requisition Work''].[USER2ENT]) as ''' + @User_To_Enter + ''', ' +  '''' + @Voided + ''' = dbo.DYN_FUNC_Boolean_All(0), ' + 'rtrim([''Purchasing Requisition Work''].[DomainUserName]) as ''' + @Windows_Account + ''', ' +  '''' + @Workflow_Status + ''' = dbo.DYN_FUNC_Workflow_Status([''Purchasing Requisition Work''].[Workflow_Status]), ' + 'rtrim([''Purchasing Requisition Work''].[ZIPCODE]) as ''' + @Zip_Code + ''', ' +  '''' + @POPRequisitionNumber_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppPurchaseRequisitionNumber(1,[''Purchasing Requisition Work''].[POPRequisitionNumber],0 ) '  select @sqlstring2 =   'from [POP10200] as [''Purchasing Requisition Work''] with (NOLOCK) '   select @sqlstring3 =  'union all ' +  'select ' +   'rtrim([''Purchasing Requisition History''].[POPRequisitionNumber]) as ''' + @Requisition_Number + ''', ' + 'rtrim([''Purchasing Requisition History''].[RequisitionDescription]) as ''' + @Description + ''', ' + '''' + @Status + ''' = dbo.DYN_FUNC_Requisition_Status([''Purchasing Requisition History''].[RequisitionStatus]), ' + '[''Purchasing Requisition History''].[DOCDATE] as ''' + @Document_Date + ''', ' +  '[''Purchasing Requisition History''].[REQDATE] as ''' + @Required_Date + ''', ' +  'rtrim([''Purchasing Requisition History''].[REQSTDBY]) as ''' + @Requested_By + ''', ' + '[''Purchasing Requisition History''].[DOCAMNT] as ''' + @Document_Amount + ''', '  select @sqlstring4 =   'rtrim([''Purchasing Requisition History''].[ADDRESS1]) as ''' + @Address_1 + ''', ' +  'rtrim([''Purchasing Requisition History''].[ADDRESS2]) as ''' + @Address_2 + ''', ' +  'rtrim([''Purchasing Requisition History''].[ADDRESS3]) as ''' + @Address_3 + ''', ' +  'rtrim([''Purchasing Requisition History''].[CCode]) as ''' + @Country_Code + ''', ' +  'rtrim([''Purchasing Requisition History''].[CITY]) as ''' + @City + ''', ' +  'rtrim([''Purchasing Requisition History''].[CONTACT]) as ''' + @Contact + ''', ' +  'rtrim([''Purchasing Requisition History''].[COMMNTID]) as ''' + @Comment_ID + ''', ' +  'rtrim([''Purchasing Requisition History''].[COUNTRY]) as ''' + @Country + ''', ' +  'rtrim([''Purchasing Requisition History''].[CMPNYNAM]) as ''' + @Company_Name + ''', ' + '[''Purchasing Requisition History''].[CREATDDT] as ''' + @Created_Date + ''', ' +  '''' + @Document_Status + ''' = dbo.DYN_FUNC_Requisition_Document_Status(2), ' +  'rtrim([''Purchasing Requisition History''].[FAX]) as ''' + @Fax + ''', ' +  '''' + @Invalid_Data_Flag + ''' = case [''Purchasing Requisition History''].[Flags] when 0 then dbo.DYN_FUNC_Boolean_All(0) else dbo.DYN_FUNC_Boolean_All(1) end, ' + '[''Purchasing Requisition History''].[MODIFDT] as ''' + @Modified_Date + ''', ' +  'rtrim([''Purchasing Requisition History''].[PHONE1]) as ''' + @Phone_1 + ''', ' +  'rtrim([''Purchasing Requisition History''].[PHONE2]) as ''' + @Phone_2 + ''', ' +  'rtrim([''Purchasing Requisition History''].[PHONE3]) as ''' + @Phone_3 + ''', ' +  'rtrim([''Purchasing Requisition History''].[PRSTADCD]) as ''' + @Primary_Shipto_Address_ID + ''', ' +  'rtrim([''Purchasing Requisition History''].[STATE]) as ''' + @State + ''', ' +  'rtrim([''Purchasing Requisition History''].[USERDEF1]) as ''' + @User_Defined_1 + ''', ' +  'rtrim([''Purchasing Requisition History''].[USERDEF1]) as ''' + @User_Defined_2 + ''', ' +  'rtrim([''Purchasing Requisition History''].[USER2ENT]) as ''' + @User_To_Enter + ''', ' +  '''' + @Voided + ''' = dbo.DYN_FUNC_Boolean_All([''Purchasing Requisition History''].[VOIDED]), '+ 'rtrim([''Purchasing Requisition History''].[DomainUserName]) as ''' + @Windows_Account + ''', ' +  '''' + @Workflow_Status + ''' = dbo.DYN_FUNC_Workflow_Status([''Purchasing Requisition History''].[Workflow_Status]), ' + 'rtrim([''Purchasing Requisition History''].[ZIPCODE]) as ''' + @Zip_Code + ''', ' +   '''' + @POPRequisitionNumber_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppPurchaseRequisitionNumber(1,[''Purchasing Requisition History''].[POPRequisitionNumber],1 ) '  select @sqljoinstring =   'from [POP30200] as [''Purchasing Requisition History''] with (NOLOCK) '   select @sqlaccessstring =   'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [rpt_operations manager]' + 'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [rpt_purchasing agent]' + 'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [rpt_purchasing manager]' + 'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [rpt_accounting manager]' + 'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[PurchaseRequisitions] TO [DYNGRP]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9  +' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_Dynamics_PurchaseRequisitions] TO [DYNGRP]
GO
