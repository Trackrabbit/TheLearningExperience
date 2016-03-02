SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_FieldService_RMAs] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @Return_Document_ID varchar(255), @Return_Record_Type varchar(255), @RMA_Status varchar(255), @Received varchar(255), @Return_Origin varchar(255), @Return_Reference varchar(255), @Return_Status varchar(255), @SVC_Return_Type varchar(255), @Entry_Date varchar(255), @Entry_Time varchar(255), @ETA_Date varchar(255), @ETA_Time varchar(255), @Return_Date varchar(255), @Return_Time varchar(255), @Complete_Date varchar(255), @Complete_Time varchar(255), @User_ID varchar(255), @Office_ID varchar(255), @Return_Address_Name varchar(255), @Return_Address_1 varchar(255), @Return_Address_2 varchar(255), @Return_Address_3 varchar(255), @Return_Address_City varchar(255), @SVC_Return_State varchar(255), @Return_Address_Zip_Code varchar(255), @Return_Country varchar(255), @Location_Code varchar(255), @Customer_ID varchar(255), @Address_Code varchar(255), @Customer_Name varchar(255), @Contact varchar(255), @Address_1 varchar(255), @Address_2 varchar(255), @Address_3 varchar(255), @City varchar(255), @State varchar(255), @Zip_Code varchar(255), @Country varchar(255), @Note_Index varchar(255), @Service_Call_Number varchar(255), @Service_Record_Type varchar(255), @Equipment_Line_Item_Sequence varchar(255), @Line_Item_Sequence varchar(255), @Bill_of_Lading varchar(255), @Shipping_Method varchar(255), @SOP_Type varchar(255), @SOP_Number varchar(255), @SOP_Line_Item_Sequence varchar(255), @Component_Sequence varchar(255), @Bill_To_Customer_ID varchar(255), @SVC_Bill_To_Address_Code varchar(255), @Commit_Date varchar(255), @Commit_Time varchar(255), @User_Defined_1 varchar(255), @User_Defined_2 varchar(255), @User_Defined_3 varchar(255), @User_Defined_4 varchar(255), @User_Defined_5 varchar(255), @Currency_ID varchar(255), @Currency_Index varchar(255), @Rate_Type_ID varchar(255), @Exchange_Table_ID varchar(255), @Exchange_Rate varchar(255), @Exchange_Date varchar(255), @Decimal_Places varchar(255), @Time varchar(255), @Rate_Calc_Method varchar(255), @View_Mode varchar(255), @IS_MC_Trx varchar(255), @Expiration_Date varchar(255), @Denomination_Exchange_Rate varchar(255), @MC_Transaction_State varchar(255), @Customer_PO_Number varchar(255), @SVC_RMA_Reason_Code varchar(255), @SVC_RMA_Reason_Code_Desc varchar(255), @ varchar(255), @SVC_FO_ID varchar(255), @Bill_To_Customer_Name varchar(255), @SVC_RMA_From_Service varchar(255),  @DrillBack_Base_Url varchar(255), @DrillBack_Base_Url_For_FS varchar(255), @Return_Document_ID_For_DrillBack varchar(255), @Service_Call_Number_For_DrillBack varchar(255), @Customer_ID_For_DrillBack varchar(255), @SOP_Number_For_DrillBack varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) select @DrillBack_Base_Url_For_FS = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),949)  select @I_iDictID = 949 select @I_iMessageNumber = 26800 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Document_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26801 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Record_Type output  select @I_iDictID = 949 select @I_iMessageNumber = 26802 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @RMA_Status output  select @I_iDictID = 949 select @I_iMessageNumber = 26803 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Received output  select @I_iDictID = 949 select @I_iMessageNumber = 26804 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Origin output  select @I_iDictID = 949 select @I_iMessageNumber = 26805 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Reference output  select @I_iDictID = 949 select @I_iMessageNumber = 26806 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Status output  select @I_iDictID = 949 select @I_iMessageNumber = 26807 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_Return_Type output  select @I_iDictID = 949 select @I_iMessageNumber = 26808 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Entry_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26809 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Entry_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26810 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @ETA_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26811 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @ETA_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26812 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26813 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26814 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Complete_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26815 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Complete_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26816 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26817 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Office_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26818 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_Name output  select @I_iDictID = 949 select @I_iMessageNumber = 26819 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_1 output  select @I_iDictID = 949 select @I_iMessageNumber = 26820 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_2 output  select @I_iDictID = 949 select @I_iMessageNumber = 26821 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_3 output  select @I_iDictID = 949 select @I_iMessageNumber = 26822 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_City output  select @I_iDictID = 949 select @I_iMessageNumber = 26823 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_Return_State output  select @I_iDictID = 949 select @I_iMessageNumber = 26824 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Address_Zip_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26825 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Country output  select @I_iDictID = 949 select @I_iMessageNumber = 26826 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Location_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26827 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26828 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26829 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_Name output  select @I_iDictID = 949 select @I_iMessageNumber = 26830 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Contact output  select @I_iDictID = 949 select @I_iMessageNumber = 26831 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_1 output  select @I_iDictID = 949 select @I_iMessageNumber = 26832 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_2 output  select @I_iDictID = 949 select @I_iMessageNumber = 26833 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Address_3 output  select @I_iDictID = 949 select @I_iMessageNumber = 26834 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @City output  select @I_iDictID = 949 select @I_iMessageNumber = 26835 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @State output  select @I_iDictID = 949 select @I_iMessageNumber = 26836 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Zip_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26837 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Country output  select @I_iDictID = 949 select @I_iMessageNumber = 26838 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Note_Index output  select @I_iDictID = 949 select @I_iMessageNumber = 26839 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Service_Call_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 26840 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Service_Record_Type output  select @I_iDictID = 949 select @I_iMessageNumber = 26841 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Equipment_Line_Item_Sequence output  select @I_iDictID = 949 select @I_iMessageNumber = 26842 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Line_Item_Sequence output  select @I_iDictID = 949 select @I_iMessageNumber = 26843 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Bill_of_Lading output  select @I_iDictID = 949 select @I_iMessageNumber = 26844 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Shipping_Method output  select @I_iDictID = 949 select @I_iMessageNumber = 26845 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Type output  select @I_iDictID = 949 select @I_iMessageNumber = 26846 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 26847 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Line_Item_Sequence output  select @I_iDictID = 949 select @I_iMessageNumber = 26848 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Component_Sequence output  select @I_iDictID = 949 select @I_iMessageNumber = 26849 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Bill_To_Customer_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26850 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_Bill_To_Address_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26851 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Commit_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26852 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Commit_Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26853 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_1 output  select @I_iDictID = 949 select @I_iMessageNumber = 26854 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_2 output  select @I_iDictID = 949 select @I_iMessageNumber = 26855 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_3 output  select @I_iDictID = 949 select @I_iMessageNumber = 26856 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_4 output  select @I_iDictID = 949 select @I_iMessageNumber = 26857 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_5 output  select @I_iDictID = 949 select @I_iMessageNumber = 26858 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26859 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Currency_Index output  select @I_iDictID = 949 select @I_iMessageNumber = 26860 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Rate_Type_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26861 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Table_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26862 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Rate output  select @I_iDictID = 949 select @I_iMessageNumber = 26863 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Exchange_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26864 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Decimal_Places output  select @I_iDictID = 949 select @I_iMessageNumber = 26865 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Time output  select @I_iDictID = 949 select @I_iMessageNumber = 26866 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Rate_Calc_Method output  select @I_iDictID = 949 select @I_iMessageNumber = 26867 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @View_Mode output  select @I_iDictID = 949 select @I_iMessageNumber = 26868 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @IS_MC_Trx output  select @I_iDictID = 949 select @I_iMessageNumber = 26869 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Expiration_Date output  select @I_iDictID = 949 select @I_iMessageNumber = 26870 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Denomination_Exchange_Rate output  select @I_iDictID = 949 select @I_iMessageNumber = 26871 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @MC_Transaction_State output  select @I_iDictID = 949 select @I_iMessageNumber = 26872 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_PO_Number output  select @I_iDictID = 949 select @I_iMessageNumber = 26873 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_RMA_Reason_Code output  select @I_iDictID = 949 select @I_iMessageNumber = 26874 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_RMA_Reason_Code_Desc output  select @I_iDictID = 949 select @I_iMessageNumber = 26875 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @ output  select @I_iDictID = 949 select @I_iMessageNumber = 26876 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_FO_ID output  select @I_iDictID = 949 select @I_iMessageNumber = 26980 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Bill_To_Customer_Name output  select @I_iDictID = 949 select @I_iMessageNumber = 26875 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SVC_RMA_From_Service output   select @I_iDictID = 949 select @I_iMessageNumber = 26839 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Service_Call_Number_For_DrillBack output   select @I_iDictID = 949 select @I_iMessageNumber = 26827 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Customer_ID_For_DrillBack output   select @I_iDictID = 949 select @I_iMessageNumber = 26800 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Return_Document_ID_For_DrillBack output   select @I_iDictID = 949 select @I_iMessageNumber = 26846 select @I_iAliasMessageNumber = 30088 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @SOP_Number_For_DrillBack output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[RMAs]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[RMAs] '  select @sqldefaultstring =   'CREATE VIEW RMAs AS ' +   'select ' +   'rtrim([''Returns Master''].[RETDOCID]) as ''' + @Return_Document_ID + ''', ' + '''' + @Return_Record_Type + ''' = dbo.FS_FUNC_Return_Record_Type([''Returns Master''].[Return_Record_Type]), ' + '''' + @RMA_Status + ''' = dbo.FS_FUNC_RMA_Status([''Returns Master''].[RMA_Status]), ' + '''' + @Received + ''' = dbo.DYN_FUNC_Boolean_All([''Returns Master''].[Received]), ' + '''' + @Return_Origin + ''' = dbo.FS_FUNC_Return_Origin([''Returns Master''].[RETORIG]), ' + 'rtrim([''Returns Master''].[RETREF]) as ''' + @Return_Reference + ''', ' + 'rtrim([''Returns Master''].[RETSTAT]) as ''' + @Return_Status + ''', ' + 'rtrim([''Returns Master''].[RETTYPE]) as ''' + @SVC_Return_Type + ''', ' + '[''Returns Master''].[ENTDTE] as ''' + @Entry_Date + ''', ' + '[''Returns Master''].[ETADTE] as ''' + @ETA_Date + ''', ' + '[''Returns Master''].[RETUDATE] as ''' + @Return_Date + ''', ' + '[''Returns Master''].[COMPDTE] as ''' + @Complete_Date + ''', ' + 'rtrim([''Returns Master''].[OFFID]) as ''' + @Office_ID + ''', ' + 'rtrim([''Returns Master''].[LOCNCODE]) as ''' + @Location_Code + ''', ' + 'rtrim([''RM Customer MSTR''].[CUSTNMBR]) as ''' + @Customer_ID + ''', ' + 'rtrim([''Returns Master''].[ADRSCODE]) as ''' + @Address_Code + ''', '   select @sqlstring1 =   'rtrim([''Returns Master''].[ADDRESS1]) as ''' + @Address_1 + ''', ' +  'rtrim([''Returns Master''].[ADDRESS2]) as ''' + @Address_2 + ''', ' +  'rtrim([''Returns Master''].[ADDRESS3]) as ''' + @Address_3 + ''', ' +  'rtrim([''RM Customer MSTR2''].[CUSTNMBR]) as ''' + @Bill_To_Customer_ID + ''', ' +  'rtrim([''RM Customer MSTR2''].[CUSTNAME]) as ''' + @Bill_To_Customer_Name + ''', ' +  'rtrim([''Returns Master''].[Bill_of_Lading]) as ''' + @Bill_of_Lading + ''', ' +  'rtrim([''Returns Master''].[CITY]) as ''' + @City + ''', ' +  '[''Returns Master''].[Commit_Date] as ''' + @Commit_Date + ''', ' +  '[''Returns Master''].[Commit_Time] as ''' + @Commit_Time + ''', ' +  '[''Returns Master''].[COMPTME] as ''' + @Complete_Time + ''', ' +  '[''Returns Master''].[CMPNTSEQ] as ''' + @Component_Sequence + ''', ' +  'rtrim([''Returns Master''].[CONTACT]) as ''' + @Contact + ''', ' +  'rtrim([''Returns Master''].[COUNTRY]) as ''' + @Country + ''', ' +  'rtrim([''Returns Master''].[CURNCYID]) as ''' + @Currency_ID + ''', ' +  '[''Returns Master''].[CURRNIDX] as ''' + @Currency_Index + ''', ' +  'rtrim([''Returns Master''].[CUSTNAME]) as ''' + @Customer_Name + ''', ' +  'rtrim([''Returns Master''].[CSTPONBR]) as ''' + @Customer_PO_Number + ''', ' +  '''' + @Decimal_Places + ''' = dbo.DYN_FUNC_Decimal_Places_QTYS([''Returns Master''].[DECPLACS]), ' +  '[''Returns Master''].[DENXRATE] as ''' + @Denomination_Exchange_Rate + ''', ' +  '[''Returns Master''].[ETATME] as ''' + @ETA_Time + ''', ' +  '[''Returns Master''].[ENTTME] as ''' + @Entry_Time + ''', ' +  '[''Returns Master''].[EQPLINE] as ''' + @Equipment_Line_Item_Sequence + ''', ' +  '[''Returns Master''].[EXCHDATE] as ''' + @Exchange_Date + ''', ' +  '[''Returns Master''].[XCHGRATE] as ''' + @Exchange_Rate + ''', ' +  'rtrim([''Returns Master''].[EXGTBLID]) as ''' + @Exchange_Table_ID + ''', ' +  '[''Returns Master''].[EXPNDATE] as ''' + @Expiration_Date + ''', ' +  '[''Returns Master''].[ISMCTRX] as ''' + @IS_MC_Trx + ''', ' +  '[''Returns Master''].[LNITMSEQ] as ''' + @Line_Item_Sequence + ''', ' +  '[''Returns Master''].[MCTRXSTT] as ''' + @MC_Transaction_State + ''', ' +  '[''Returns Master''].[NOTEINDX] as ''' + @Note_Index + ''', ' +  '[''Returns Master''].[RATECALC] as ''' + @Rate_Calc_Method + ''', ' +  'rtrim([''Returns Master''].[RATETPID]) as ''' + @Rate_Type_ID + ''', ' +  'rtrim([''Returns Master''].[RETADDR1]) as ''' + @Return_Address_1 + ''', ' +  'rtrim([''Returns Master''].[RETADDR2]) as ''' + @Return_Address_2 + ''', ' +  'rtrim([''Returns Master''].[RETADDR3]) as ''' + @Return_Address_3 + ''', ' +  'rtrim([''Returns Master''].[RTRNCITY]) as ''' + @Return_Address_City + ''', ' +  'rtrim([''Returns Master''].[RTRNNAME]) as ''' + @Return_Address_Name + ''', ' +  'rtrim([''Returns Master''].[RTRNZIP]) as ''' + @Return_Address_Zip_Code + ''', ' +  'rtrim([''Returns Master''].[Return_Country]) as ''' + @Return_Country + ''', ' +  '[''Returns Master''].[Return_Time] as ''' + @Return_Time + ''', ' +  '[''Returns Master''].[SOP_Line_Item_Sequence] as ''' + @SOP_Line_Item_Sequence + ''', ' +  'rtrim([''Returns Master''].[SOPNUMBE]) as ''' + @SOP_Number + ''', ' +  '''' + @SOP_Type + ''' = dbo.DYN_FUNC_SOP_Type([''Returns Master''].[SOPTYPE]), ' +  'rtrim([''Returns Master''].[SVC_Bill_To_Address_Code]) as ''' + @SVC_Bill_To_Address_Code + ''', ' +  '''' + @SVC_FO_ID + ''' = dbo.DYN_FUNC_Boolean_All([''Returns Master''].[SVC_FO_ID]), ' +  'rtrim([''Returns Master''].[SVC_RMA_Reason_Code]) as ''' + @SVC_RMA_Reason_Code + ''', ' +  'rtrim([''Returns Master''].[SVC_RMA_Reason_Code_Desc]) as ''' + @SVC_RMA_Reason_Code_Desc + ''', ' +  'rtrim([''Returns Master''].[SVC_Return_State]) as ''' + @SVC_Return_State + ''', ' +  'rtrim([''Returns Master''].[CALLNBR]) as ''' + @Service_Call_Number + ''', ' +  '''' + @Service_Record_Type + ''' = dbo.FS_FUNC_Service_Record_Type([''Returns Master''].[SRVRECTYPE]), ' +  'rtrim([''Returns Master''].[SHIPMTHD]) as ''' + @Shipping_Method + ''', ' +  'rtrim([''Returns Master''].[STATE]) as ''' + @State + ''', ' +  '[''Returns Master''].[TIME1] as ''' + @Time + ''', ' +  'rtrim([''Returns Master''].[USERDEF1]) as ''' + @User_Defined_1 + ''', ' +  'rtrim([''Returns Master''].[USERDEF2]) as ''' + @User_Defined_2 + ''', ' +  'rtrim([''Returns Master''].[USRDEF03]) as ''' + @User_Defined_3 + ''', ' +  'rtrim([''Returns Master''].[USRDEF04]) as ''' + @User_Defined_4 + ''', ' +  'rtrim([''Returns Master''].[USRDEF05]) as ''' + @User_Defined_5 + ''', ' +  'rtrim([''Returns Master''].[USERID]) as ''' + @User_ID + ''', ' +  '[''Returns Master''].[VIEWMODE] as ''' + @View_Mode + ''', ' +  'rtrim([''Returns Master''].[ZIPCODE]) as ''' + @Zip_Code + ''', ' + '''' + @SVC_RMA_From_Service + ''' = dbo.DYN_FUNC_Boolean_All([''Returns Master''].[SVC_RMA_From_Service]), '   select @sqlstring2 =  '''' + @Customer_ID_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppCustomerID(1,[''RM Customer MSTR''].[CUSTNMBR] ), '+ '''' + @Return_Document_ID_For_DrillBack + ''' = ''' + @DrillBack_Base_Url_For_FS + ''' +dbo.dgppRMANumber(1,[''Returns Master''].[RETDOCID],[''Returns Master''].[Return_Record_Type] ), '+ '''' + @Service_Call_Number_For_DrillBack + ''' = ''' + @DrillBack_Base_Url_For_FS + ''' +dbo.dgppServiceRecordType(1,[''Returns Master''].[CALLNBR],[''Returns Master''].[SRVRECTYPE] ), '  select @sqlstring3 =  '''' + @SOP_Number_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppSalesOrder(1,1,11,'''',0,0,[''Returns Master''].[CUSTNMBR],'''',0,'''',[''Returns Master''].[SOPTYPE],[''Returns Master''].[SOPNUMBE] ) '   select @sqljoinstring =   'from [SVC05000] as [''Returns Master''] with (NOLOCK) '   + 'left outer join [RM00101] as [''RM Customer MSTR''] with (NOLOCK) on '   + '[''Returns Master''].[CUSTNMBR] = [''RM Customer MSTR''].[CUSTNMBR] '   + 'left outer join [RM00101] as [''RM Customer MSTR2''] with (NOLOCK) on '   + '[''Returns Master''].[Bill_To_Customer] = [''RM Customer MSTR2''].[CUSTNMBR] '   select @sqlaccessstring =   'GRANT SELECT ON [dbo].[RMAs] TO [rpt_dispatcher]' + 'GRANT SELECT ON [dbo].[RMAs] TO [rpt_customer service rep]' + 'GRANT SELECT ON [dbo].[RMAs] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[RMAs] TO [rpt_project manager]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_FieldService_RMAs] TO [DYNGRP]
GO
