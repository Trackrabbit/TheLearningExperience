SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyPA4] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255), @DestCMPANYID smallint, @SourcCMPANYID smallint, @DestCMPNYNAM varchar(65) select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '', @DestCMPANYID = 0, @SourcCMPANYID = 0, @DestCMPNYNAM = '' select @DestCMPANYID = CMPANYID, @DestCMPNYNAM = CMPNYNAM from DYNAMICS..SY01500 where INTERID = @I_vToCompany select @SourcCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @I_vFromCompany if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA02601' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA02601 ( [CUSTNMBR],[PABILLCYCLEID1] ) select [CUSTNMBR],[PABILLCYCLEID1] from ' + rtrim(@I_vFromCompany) + '..PA02601 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA02701' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA02701 ( [PACONTNUMBER],[PACHGORDNO],[PADOCDT],[PACOSTATUS],[PACOTYPE],[DCSTATUS] ) select [PACONTNUMBER],[PACHGORDNO],[PADOCDT],[PACOSTATUS],[PACOTYPE],[DCSTATUS] from ' + rtrim(@I_vFromCompany) + '..PA02701 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA05200' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA05200 ( [PAPROJNUMBER],[LNITMSEQ],[PAFeeID],[PADT],[PAFeeAmount],[PAAmount_Billed], [PACHGORDNO],[PA_MC_Fee_Amount],[PA_MC_Amount_Billed] ) select [PAPROJNUMBER],[LNITMSEQ],[PAFeeID],[PADT],[PAFeeAmount],[PAAmount_Billed], [PACHGORDNO],[PA_MC_Fee_Amount],[PA_MC_Amount_Billed] from ' + rtrim(@I_vFromCompany) + '..PA05200 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA12000' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA12000 ( [PACHGORDNO],[PACREATEADDFLY],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC], [PACOCUSTNO],[PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY], [PAREVPOSITION],[PALSTREVSEDATE],[LSTUSRED],[PAPREVBEGINDT],[PAbegindate],[PAPREVENDDT], [PAEnDate],[PAAPPROVBY],[DSCRIPTN],[APPRVLDT],[PAGBTRKCHG],[PAREVSBUDGMT], [PACOREVSFEEAMT],[PATOTCHGORDAMT],[PAPREVPROJAMT],[PAVARPROFAMT],[PAREVPROJAMT],[PAProject_Amount], [PAREVREASON],[PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTCOST], [PACOTOTBILL],[PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] ) select [PACHGORDNO],[PACREATEADDFLY],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC], [PACOCUSTNO],[PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY], [PAREVPOSITION],[PALSTREVSEDATE],[LSTUSRED],[PAPREVBEGINDT],[PAbegindate],[PAPREVENDDT], [PAEnDate],[PAAPPROVBY],[DSCRIPTN],[APPRVLDT],[PAGBTRKCHG],[PAREVSBUDGMT], [PACOREVSFEEAMT],[PATOTCHGORDAMT],[PAPREVPROJAMT],[PAVARPROFAMT],[PAREVPROJAMT],[PAProject_Amount], [PAREVREASON],[PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTCOST], [PACOTOTBILL],[PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] from ' + rtrim(@I_vFromCompany) + '..PA12000 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA12001' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA12001 ( [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAPREVQTY],[PAVarianceCosts],[PAUNITCOST],[PAPREVUNITCOST], [PAVARTOTCOST],[PAVAROVERHDAMT],[PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAPREVOVRHDPRCNT], [PAPREVTOTOVEHD],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PAPREVOVEHDUNIT],[PATOTCST],[PAPREVTOTCOST], [PAVARMUPRCNT],[PAProfitPercent],[PAPREVPROFPRCNT],[PAVARPROFAMT],[PAProfitAmount],[PAPRVPROFITAMT], [PAVARTOTLPROF],[PATotalProfit],[PAPREVTOTPROF],[PAVARTOTBILLINGS],[PAtotbillings],[PAPREVTOTBILL], [PAORIGBUDGTAMT],[PAROGPROJAMT],[PAProject_Amount],[PAPREVPROJAMT],[PAVARPROJAMT],[PAPREVBASEQTY], [PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST],[PABaseOvhdCost],[PAPREVBSPROFAMT], [PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY],[PAQUOTEAPPRVBY],[PAREVBUDGTAMT], [PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB],[PAPostedQty],[PAPostedTotalCostN], [PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN],[PAPostRecogRevN],[PAPOSBIEEAMOUNT], [PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN],[PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou], [ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT],[PAActualWOTaxAmt],[PAActualTermsTakenTax] ) select [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAPREVQTY],[PAVarianceCosts],[PAUNITCOST],[PAPREVUNITCOST], [PAVARTOTCOST],[PAVAROVERHDAMT],[PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAPREVOVRHDPRCNT], [PAPREVTOTOVEHD],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PAPREVOVEHDUNIT],[PATOTCST],[PAPREVTOTCOST], [PAVARMUPRCNT],[PAProfitPercent],[PAPREVPROFPRCNT],[PAVARPROFAMT],[PAProfitAmount],[PAPRVPROFITAMT], [PAVARTOTLPROF],[PATotalProfit],[PAPREVTOTPROF],[PAVARTOTBILLINGS],[PAtotbillings],[PAPREVTOTBILL], [PAORIGBUDGTAMT],[PAROGPROJAMT],[PAProject_Amount],[PAPREVPROJAMT],[PAVARPROJAMT],[PAPREVBASEQTY], [PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST],[PABaseOvhdCost],[PAPREVBSPROFAMT], [PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY],[PAQUOTEAPPRVBY],[PAREVBUDGTAMT], [PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB],[PAPostedQty],[PAPostedTotalCostN], [PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN],[PAPostRecogRevN],[PAPOSBIEEAMOUNT], [PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN],[PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou], [ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT],[PAActualWOTaxAmt],[PAActualTermsTakenTax] from ' + rtrim(@I_vFromCompany) + '..PA12001 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA12101' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA12101 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAVARTOTFEEAMT],[PAsequencenumber], [PAbegindate],[PAEnDate],[PATOTPRJFEEAMT],[PATOTRETNFEEAMT],[PATOTRETNTNAMT],[PATOTSRVCFEEAMT], [PAClose_CB],[PAVARPRJFEEAMT],[PAVARRETFEEAMT],[PAVARETNFEEAMT],[PAVARSERVFEEAMT],[PAPosted_Project_Fee], [PAPosted_Retainer_Fee],[PAPOSTRETAMT],[PAPosted_Service_Fee] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAVARTOTFEEAMT],[PAsequencenumber], [PAbegindate],[PAEnDate],[PATOTPRJFEEAMT],[PATOTRETNFEEAMT],[PATOTRETNTNAMT],[PATOTSRVCFEEAMT], [PAClose_CB],[PAVARPRJFEEAMT],[PAVARRETFEEAMT],[PAVARETNFEEAMT],[PAVARSERVFEEAMT],[PAPosted_Project_Fee], [PAPosted_Retainer_Fee],[PAPOSTRETAMT],[PAPosted_Service_Fee] from ' + rtrim(@I_vFromCompany) + '..PA12101 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA12102' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA12102 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAFeeID],[PAFeeType], [PAPREVFEEAMT],[PAVARFEESAMT],[PAFeeAmount],[PA_Prev_Fee_Percent],[PAVARFEEPRCNT],[PAFeePercent], [PAFeeToUse],[PASales_Tax_Options],[PAbilltaxscheduleid],[PAPREVBILLTXSCHED],[PAbegindate],[PAPREVBEGINDT], [PAEnDate],[PAPREVENDDT],[PAFrequency],[PAPREVFREQ],[STRTDATE],[ENDDATE], [PARenew],[PARenewal_Date],[PATotAmt],[PAPREVTOTAMT],[PA_Renew_Day],[PA_Renew_Month], [PAsequencenumber],[TM_AR_Fee_SRC],[TM_Prj_Deferred_Rev_Fee_],[TM_Prj_Rev_Fee_SRC],[TM_BIEE_Fee_SRC],[TM_EIEB_Fee_SRC], [PAFF_AR_Fee_SRC],[FF_Prj_Billings_Fee_SRC],[FF_Prj_Rev_Fee_SRC],[FF_Retention_Fee_SRC],[FF_WIP_Fee_SRC],[FF_Prj_Deferred_Rev_Fee_], [FF_BIEE_Fee_SRC],[FF_EIEB_Fee_SRC],[PAtotcbts],[PAtotcbEL],[PAtotcbML],[PAtotcbvi], [PAtotcber],[PAtotcbinv],[PAbillnoteidx],[PAPosted_Project_Fee],[PAPosted_Retainer_Fee],[PAPOSTRETAMT], [PAPosted_Service_Fee] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAFeeID],[PAFeeType], [PAPREVFEEAMT],[PAVARFEESAMT],[PAFeeAmount],[PA_Prev_Fee_Percent],[PAVARFEEPRCNT],[PAFeePercent], [PAFeeToUse],[PASales_Tax_Options],[PAbilltaxscheduleid],[PAPREVBILLTXSCHED],[PAbegindate],[PAPREVBEGINDT], [PAEnDate],[PAPREVENDDT],[PAFrequency],[PAPREVFREQ],[STRTDATE],[ENDDATE], [PARenew],[PARenewal_Date],[PATotAmt],[PAPREVTOTAMT],[PA_Renew_Day],[PA_Renew_Month], [PAsequencenumber],[TM_AR_Fee_SRC],[TM_Prj_Deferred_Rev_Fee_],[TM_Prj_Rev_Fee_SRC],[TM_BIEE_Fee_SRC],[TM_EIEB_Fee_SRC], [PAFF_AR_Fee_SRC],[FF_Prj_Billings_Fee_SRC],[FF_Prj_Rev_Fee_SRC],[FF_Retention_Fee_SRC],[FF_WIP_Fee_SRC],[FF_Prj_Deferred_Rev_Fee_], [FF_BIEE_Fee_SRC],[FF_EIEB_Fee_SRC],[PAtotcbts],[PAtotcbEL],[PAtotcbML],[PAtotcbvi], [PAtotcber],[PAtotcbinv],[PAbillnoteidx],[PAPosted_Project_Fee],[PAPosted_Retainer_Fee],[PAPOSTRETAMT], [PAPosted_Service_Fee] from ' + rtrim(@I_vFromCompany) + '..PA12102 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA12103' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA12103 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[LNITMSEQ],[PAsequencenumber],[PAFeeID], [PADT],[PAPREVDATE],[PAFeeAmount],[PAPREVFEEAMT],[PAAmount_Billed] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[LNITMSEQ],[PAsequencenumber],[PAFeeID], [PADT],[PAPREVDATE],[PAFeeAmount],[PAPREVFEEAMT],[PAAmount_Billed] from ' + rtrim(@I_vFromCompany) + '..PA12103 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA13201' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA13201 ( [PABILLTRXT],[PADocnumber20],[PAPROJNUMBER],[CUTOFDAT],[LNITMSEQ],[PAFeeID], [PAFeebillamount],[PAFeeAmount],[PAPreviously_Billed],[PAbillnoteidx],[PAbilltaxscheduleid],[PAFeetaxamount], [PABACKBILL],[PAFeeType],[PA_Project_Sales_IDX],[PAAR_IDX],[PA_Deferred_RevIDX],[PACGBWIPIDX], [PABProjectBlgsIDX],[PA_FF_AR_IDX],[PABProjectRevenueIDX],[PA_Retention_AR],[PA_FF_Deferred_Rev_IDX],[PA_Bill_Fee_Subline_Erro], [PA_Trade_Discount_Amount],[PARetentionFeeAmount],[PA_Retention_IDX],[PAUD1],[PAUD2],[PAOrigBillingAmtFee], [PAOrigFeeAmount],[PAOrigPrevBill],[PAOrigTaxAmtFee],[PAOrigBackoutBillAmt],[PAOrigTradeDiscAmt],[PAOrigRetentionFeeAmt], [PA_Previous_Retention],[PAOPREVRETENTION],[PACHGORDNO],[BackoutTradeDisc],[OrigBackoutTradeDisc],[PA_Backout_Retention_Amt], [PA_OrigBackRetentionAmt] ) select [PABILLTRXT],[PADocnumber20],[PAPROJNUMBER],[CUTOFDAT],[LNITMSEQ],[PAFeeID], [PAFeebillamount],[PAFeeAmount],[PAPreviously_Billed],[PAbillnoteidx],[PAbilltaxscheduleid],[PAFeetaxamount], [PABACKBILL],[PAFeeType],[PA_Project_Sales_IDX],[PAAR_IDX],[PA_Deferred_RevIDX],[PACGBWIPIDX], [PABProjectBlgsIDX],[PA_FF_AR_IDX],[PABProjectRevenueIDX],[PA_Retention_AR],[PA_FF_Deferred_Rev_IDX],[PA_Bill_Fee_Subline_Erro], [PA_Trade_Discount_Amount],[PARetentionFeeAmount],[PA_Retention_IDX],[PAUD1],[PAUD2],[PAOrigBillingAmtFee], [PAOrigFeeAmount],[PAOrigPrevBill],[PAOrigTaxAmtFee],[PAOrigBackoutBillAmt],[PAOrigTradeDiscAmt],[PAOrigRetentionFeeAmt], [PA_Previous_Retention],[PAOPREVRETENTION],[PACHGORDNO],[BackoutTradeDisc],[OrigBackoutTradeDisc],[PA_Backout_Retention_Amt], [PA_OrigBackRetentionAmt] from ' + rtrim(@I_vFromCompany) + '..PA13201 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23201' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23201 ( [PABILLTRXT],[PADocnumber20],[PAPROJNUMBER],[LNITMSEQ],[CUTOFDAT],[PAFeeID], [PAFeebillamount],[PAFeeAmount],[PAPreviously_Billed],[PAbillnoteidx],[PAbilltaxscheduleid],[PAFeetaxamount], [PABACKBILL],[PAFeeType],[PARetainer_Fee_Amount],[CURTRXAM],[ORTRXAMT],[PA_Project_Sales_IDX], [PAAR_IDX],[PA_Deferred_RevIDX],[PACGBWIPIDX],[PABProjectBlgsIDX],[PA_FF_AR_IDX],[PABProjectRevenueIDX], [PA_Retention_AR],[PA_FF_Deferred_Rev_IDX],[PA_Trade_Discount_Amount],[PARetentionFeeAmount],[PA_Retention_IDX],[PAUD1], [PAUD2],[PAOrigBillingAmtFee],[PAOrigFeeAmount],[PAOrigPrevBill],[PAOrigTaxAmtFee],[PAOrigBackoutBillAmt], [ORCTRXAM],[ORORGTRX],[PAOrigTradeDiscAmt],[PAOrigRetentionFeeAmt],[PA_Previous_Retention],[PAOPREVRETENTION], [PACHGORDNO],[BackoutTradeDisc],[OrigBackoutTradeDisc],[PA_Backout_Retention_Amt],[PA_OrigBackRetentionAmt] ) select [PABILLTRXT],[PADocnumber20],[PAPROJNUMBER],[LNITMSEQ],[CUTOFDAT],[PAFeeID], [PAFeebillamount],[PAFeeAmount],[PAPreviously_Billed],[PAbillnoteidx],[PAbilltaxscheduleid],[PAFeetaxamount], [PABACKBILL],[PAFeeType],[PARetainer_Fee_Amount],[CURTRXAM],[ORTRXAMT],[PA_Project_Sales_IDX], [PAAR_IDX],[PA_Deferred_RevIDX],[PACGBWIPIDX],[PABProjectBlgsIDX],[PA_FF_AR_IDX],[PABProjectRevenueIDX], [PA_Retention_AR],[PA_FF_Deferred_Rev_IDX],[PA_Trade_Discount_Amount],[PARetentionFeeAmount],[PA_Retention_IDX],[PAUD1], [PAUD2],[PAOrigBillingAmtFee],[PAOrigFeeAmount],[PAOrigPrevBill],[PAOrigTaxAmtFee],[PAOrigBackoutBillAmt], [ORCTRXAM],[ORORGTRX],[PAOrigTradeDiscAmt],[PAOrigRetentionFeeAmt],[PA_Previous_Retention],[PAOPREVRETENTION], [PACHGORDNO],[BackoutTradeDisc],[OrigBackoutTradeDisc],[PA_Backout_Retention_Amt],[PA_OrigBackRetentionAmt] from ' + rtrim(@I_vFromCompany) + '..PA23201 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23400' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23400 ( [PACHGORDNO],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC],[PACOCUSTNO], [PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY],[PAREVPOSITION], [PALSTREVSEDATE],[LSTUSRED],[PAbegindate],[PAEnDate],[PAAPPROVBY],[DSCRIPTN], [APPRVLDT],[PAGBTRKCHG],[PAProject_Amount],[PAREVSBUDGMT],[PACOREVSFEEAMT],[PATOTCHGORDAMT], [PAREVREASON],[PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTBILL], [PACOTOTCOST],[PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] ) select [PACHGORDNO],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC],[PACOCUSTNO], [PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY],[PAREVPOSITION], [PALSTREVSEDATE],[LSTUSRED],[PAbegindate],[PAEnDate],[PAAPPROVBY],[DSCRIPTN], [APPRVLDT],[PAGBTRKCHG],[PAProject_Amount],[PAREVSBUDGMT],[PACOREVSFEEAMT],[PATOTCHGORDAMT], [PAREVREASON],[PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTBILL], [PACOTOTCOST],[PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] from ' + rtrim(@I_vFromCompany) + '..PA23400 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23401' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23401 ( [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAVarianceCosts],[PAUNITCOST],[PAVARTOTCOST],[PAVAROVERHDAMT], [PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PATOTCST], [PAVARMUPRCNT],[PAProfitPercent],[PAVARPROFAMT],[PAProfitAmount],[PAVARTOTLPROF],[PATotalProfit], [PAVARTOTBILLINGS],[PAtotbillings],[PAORIGBUDGTAMT],[PAROGPROJAMT],[PAVARPROJAMT],[PAProject_Amount], [PAPREVPROJAMT],[PAPREVBASEQTY],[PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST], [PABaseOvhdCost],[PAPREVBSPROFAMT],[PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY], [PAQUOTEAPPRVBY],[PAREVBUDGTAMT],[PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB], [PAPostedQty],[PAPostedTotalCostN],[PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN], [PAPostRecogRevN],[PAPOSBIEEAMOUNT],[PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN], [PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou],[ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT], [PAActualWOTaxAmt],[PAActualTermsTakenTax] ) select [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAVarianceCosts],[PAUNITCOST],[PAVARTOTCOST],[PAVAROVERHDAMT], [PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PATOTCST], [PAVARMUPRCNT],[PAProfitPercent],[PAVARPROFAMT],[PAProfitAmount],[PAVARTOTLPROF],[PATotalProfit], [PAVARTOTBILLINGS],[PAtotbillings],[PAORIGBUDGTAMT],[PAROGPROJAMT],[PAVARPROJAMT],[PAProject_Amount], [PAPREVPROJAMT],[PAPREVBASEQTY],[PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST], [PABaseOvhdCost],[PAPREVBSPROFAMT],[PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY], [PAQUOTEAPPRVBY],[PAREVBUDGTAMT],[PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB], [PAPostedQty],[PAPostedTotalCostN],[PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN], [PAPostRecogRevN],[PAPOSBIEEAMOUNT],[PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN], [PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou],[ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT], [PAActualWOTaxAmt],[PAActualTermsTakenTax] from ' + rtrim(@I_vFromCompany) + '..PA23401 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23500' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23500 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAVARTOTFEEAMT],[PAsequencenumber], [PAbegindate],[PAEnDate],[PATOTPRJFEEAMT],[PATOTRETNFEEAMT],[PATOTRETNTNAMT],[PATOTSRVCFEEAMT], [PAClose_CB],[PAVARPRJFEEAMT],[PAVARRETFEEAMT],[PAVARETNFEEAMT],[PAVARSERVFEEAMT],[PAPosted_Project_Fee], [PAPosted_Retainer_Fee],[PAPOSTRETAMT],[PAPosted_Service_Fee] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAVARTOTFEEAMT],[PAsequencenumber], [PAbegindate],[PAEnDate],[PATOTPRJFEEAMT],[PATOTRETNFEEAMT],[PATOTRETNTNAMT],[PATOTSRVCFEEAMT], [PAClose_CB],[PAVARPRJFEEAMT],[PAVARRETFEEAMT],[PAVARETNFEEAMT],[PAVARSERVFEEAMT],[PAPosted_Project_Fee], [PAPosted_Retainer_Fee],[PAPOSTRETAMT],[PAPosted_Service_Fee] from ' + rtrim(@I_vFromCompany) + '..PA23500 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23501' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23501 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAFeeID],[PAFeeType], [PAPREVFEEAMT],[PAVARFEESAMT],[PAFeeAmount],[PA_Prev_Fee_Percent],[PAVARFEEPRCNT],[PAFeePercent], [PAFeeToUse],[PASales_Tax_Options],[PAbilltaxscheduleid],[PAPREVBILLTXSCHED],[PAbegindate],[PAPREVBEGINDT], [PAEnDate],[PAPREVENDDT],[PAFrequency],[PAPREVFREQ],[STRTDATE],[ENDDATE], [PARenew],[PARenewal_Date],[PATotAmt],[PAPREVTOTAMT],[PA_Renew_Day],[PA_Renew_Month], [PAsequencenumber],[TM_AR_Fee_SRC],[TM_Prj_Deferred_Rev_Fee_],[TM_Prj_Rev_Fee_SRC],[TM_BIEE_Fee_SRC],[TM_EIEB_Fee_SRC], [PAFF_AR_Fee_SRC],[FF_Prj_Billings_Fee_SRC],[FF_Prj_Rev_Fee_SRC],[FF_Retention_Fee_SRC],[FF_WIP_Fee_SRC],[FF_Prj_Deferred_Rev_Fee_], [FF_BIEE_Fee_SRC],[FF_EIEB_Fee_SRC],[PAtotcbts],[PAtotcbEL],[PAtotcbML],[PAtotcbvi], [PAtotcber],[PAtotcbinv],[PAbillnoteidx],[PAPosted_Project_Fee],[PAPosted_Retainer_Fee],[PAPOSTRETAMT], [PAPosted_Service_Fee] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[PALineItemSeq],[PAFeeID],[PAFeeType], [PAPREVFEEAMT],[PAVARFEESAMT],[PAFeeAmount],[PA_Prev_Fee_Percent],[PAVARFEEPRCNT],[PAFeePercent], [PAFeeToUse],[PASales_Tax_Options],[PAbilltaxscheduleid],[PAPREVBILLTXSCHED],[PAbegindate],[PAPREVBEGINDT], [PAEnDate],[PAPREVENDDT],[PAFrequency],[PAPREVFREQ],[STRTDATE],[ENDDATE], [PARenew],[PARenewal_Date],[PATotAmt],[PAPREVTOTAMT],[PA_Renew_Day],[PA_Renew_Month], [PAsequencenumber],[TM_AR_Fee_SRC],[TM_Prj_Deferred_Rev_Fee_],[TM_Prj_Rev_Fee_SRC],[TM_BIEE_Fee_SRC],[TM_EIEB_Fee_SRC], [PAFF_AR_Fee_SRC],[FF_Prj_Billings_Fee_SRC],[FF_Prj_Rev_Fee_SRC],[FF_Retention_Fee_SRC],[FF_WIP_Fee_SRC],[FF_Prj_Deferred_Rev_Fee_], [FF_BIEE_Fee_SRC],[FF_EIEB_Fee_SRC],[PAtotcbts],[PAtotcbEL],[PAtotcbML],[PAtotcbvi], [PAtotcber],[PAtotcbinv],[PAbillnoteidx],[PAPosted_Project_Fee],[PAPosted_Retainer_Fee],[PAPOSTRETAMT], [PAPosted_Service_Fee] from ' + rtrim(@I_vFromCompany) + '..PA23501 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA23502' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA23502 ( [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[LNITMSEQ],[PAsequencenumber],[PAFeeID], [PADT],[PAPREVDATE],[PAFeeAmount],[PAPREVFEEAMT],[PAAmount_Billed] ) select [PACONTNUMBER],[PACHGORDNO],[PAPROJNUMBER],[LNITMSEQ],[PAsequencenumber],[PAFeeID], [PADT],[PAPREVDATE],[PAFeeAmount],[PAPREVFEEAMT],[PAAmount_Billed] from ' + rtrim(@I_vFromCompany) + '..PA23502 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA33701' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA33701 ( [PACHGORDNO],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC],[PACOCUSTNO], [PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY],[PAREVPOSITION], [PALSTREVSEDATE],[LSTUSRED],[PAbegindate],[PAEnDate],[PAAPPROVBY],[DSCRIPTN], [APPRVLDT],[PAGBTRKCHG],[PAREVSBUDGMT],[PACOREVSFEEAMT],[PATOTCHGORDAMT],[PAREVREASON], [PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTBILL],[PACOTOTCOST], [PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] ) select [PACHGORDNO],[PACONTNUMBER],[CUSTNMBR],[PADOCDT],[PACODESC],[PACOCUSTNO], [PACOTYPE],[PACOSTATUS],[REQSTDBY],[PAESTBY],[PAREVBY],[PAREVPOSITION], [PALSTREVSEDATE],[LSTUSRED],[PAbegindate],[PAEnDate],[PAAPPROVBY],[DSCRIPTN], [APPRVLDT],[PAGBTRKCHG],[PAREVSBUDGMT],[PACOREVSFEEAMT],[PATOTCHGORDAMT],[PAREVREASON], [PADOCSTATUS],[PAsequencenumber],[NOTEINDX],[NOTEINDX2],[PACOTOTBILL],[PACOTOTCOST], [PACOTOTQTY],[PAVARTOTBILLINGS],[PAVARTOTCOST],[PAVARTOTQTY] from ' + rtrim(@I_vFromCompany) + '..PA33701 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA33702' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA33702 ( [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAVarianceCosts],[PAUNITCOST],[PAVARTOTCOST],[PAVAROVERHDAMT], [PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PATOTCST], [PAVARMUPRCNT],[PAProfitPercent],[PAVARPROFAMT],[PAProfitAmount],[PAVARTOTLPROF],[PATotalProfit], [PAVARTOTBILLINGS],[PAtotbillings],[PAORIGBUDGTAMT],[PAROGPROJAMT],[PAVARPROJAMT],[PAProject_Amount], [PAPREVPROJAMT],[PAPREVBASEQTY],[PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST], [PABaseOvhdCost],[PAPREVBSPROFAMT],[PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY], [PAQUOTEAPPRVBY],[PAREVBUDGTAMT],[PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB], [PAPostedQty],[PAPostedTotalCostN],[PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN], [PAPostRecogRevN],[PAPOSBIEEAMOUNT],[PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN], [PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou],[ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT], [PAActualWOTaxAmt],[PAActualTermsTakenTax] ) select [PACONTNUMBER],[PACHGORDNO],[PACOTRKCHGBY],[LNITMSEQ],[PAPROJNUMBER],[PATU], [PACOSTCATID],[PALineItemSeq],[PAUnit_of_Measure],[UOMSCHDL],[PAPREVBEGINDT],[PAbegindate], [PAPREVENDDT],[PAEnDate],[PAPREVPYCDESLY],[PAPay_Code_Salary],[PAPREVPYCODEHOURLY],[PAPay_Code_Hourly], [PAProfitType],[PAbllngtype],[PAPREVPURCHTXOPT],[PAPurchase_Tax_Options],[PAPREVCOSTXSCHED],[PAPURCHTAXSCHED], [DECPLQTY],[DECPLCUR],[PAPREVSALESTXOPT],[PASales_Tax_Options],[PAPREVBILLTXSCHED],[PAbilltaxscheduleid], [PAVarianceQty],[PAQtyQ],[PAVarianceCosts],[PAUNITCOST],[PAVARTOTCOST],[PAVAROVERHDAMT], [PATOTALOVERH],[PAVAROVERHDPRCNT],[PAOverheaPercentage],[PAVAROVRHDUNIT],[PAOvhdAmtPerUnit],[PATOTCST], [PAVARMUPRCNT],[PAProfitPercent],[PAVARPROFAMT],[PAProfitAmount],[PAVARTOTLPROF],[PATotalProfit], [PAVARTOTBILLINGS],[PAtotbillings],[PAORIGBUDGTAMT],[PAROGPROJAMT],[PAVARPROJAMT],[PAProject_Amount], [PAPREVPROJAMT],[PAPREVBASEQTY],[PABase_Qty],[PAPREVBSEUNTCST],[PABase_Unit_Cost],[PAPREVBSOVERHDCST], [PABaseOvhdCost],[PAPREVBSPROFAMT],[PABaseProfitAmount],[PAPROPQUOTEAMT],[PAFINQUOTEAMT],[PAQUOTEPREPBY], [PAQUOTEAPPRVBY],[PAREVBUDGTAMT],[PAREVPROJAMT],[PAsequencenumber],[APPRVLDT],[PAClose_CB], [PAPostedQty],[PAPostedTotalCostN],[PAPosted_Overhead],[PAPostedProfitN],[PAPosted_Tax_Amount],[PAPosted_Accr_RevN], [PAPostRecogRevN],[PAPOSBIEEAMOUNT],[PAPOSEIEBAMOUNT],[PApostbillamt],[PA_Actual_Receipts_Amoun],[PAPostedBillingsN], [PAPostedDiscDolAmtN],[PAPosted_Sales_Tax_Amou],[ActualWriteOffAmount],[ActualDiscTakenAmount],[PAPostedTaxPaidN],[PAPOSTRETAMT], [PAActualWOTaxAmt],[PAActualTermsTakenTax] from ' + rtrim(@I_vFromCompany) + '..PA33702 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA40020' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA40020 ( [PAALLOCATIONDESCRIPTION],[PAALLOCATIONID],[PAActive] ) select [PAALLOCATIONDESCRIPTION],[PAALLOCATIONID],[PAActive] from ' + rtrim(@I_vFromCompany) + '..PA40020 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..PA40030' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..PA40030 ( [PAAMOUNT],[PAPROJNUMBERFROM],[PAMETHOD],[PACOSTCATIDBASIS],[PAMISCIDTO],[PAMISCLOGCOSTCATTO], [PACOSTCATIDFROM],[PAPROJNUMBERTO],[PAMISCIDFROM],[PAMISCLOGCOSTCATFROM],[PAALLOCATIONID] ) select [PAAMOUNT],[PAPROJNUMBERFROM],[PAMETHOD],[PACOSTCATIDBASIS],[PAMISCIDTO],[PAMISCLOGCOSTCATTO], [PACOSTCATIDFROM],[PAPROJNUMBERTO],[PAMISCIDFROM],[PAMISCLOGCOSTCATFROM],[PAALLOCATIONID] from ' + rtrim(@I_vFromCompany) + '..PA40030 ' exec(@cStatement) exec @iStatus = eeCompanyCopyPA5 @I_vFromCompany,			 @I_vToCompany,				 @I_vData,					 @I_vReportOptions,			 @O_iErrorState output		 if ((@iStatus <> 0) or (@O_iErrorState <> 0)) begin select @O_iErrorState = 1  return (@O_iErrorState) end end return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyPA4] TO [DYNGRP]
GO
