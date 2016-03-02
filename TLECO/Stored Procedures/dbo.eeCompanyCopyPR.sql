SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[eeCompanyCopyPR] @I_vFromCompany varchar(50),			 @I_vToCompany varchar(50),				 @I_vData tinyint,						 @I_vReportOptions tinyint,				 @O_iErrorState int = 0 output			 with encryption as set transaction isolation level read uncommitted set nocount on declare @iStatus int, @cStatement varchar(8000), @cStatement2 varchar(8000), @cStatement3 varchar(8000), @cStatement4 varchar(8000), @cStatement5 varchar(8000), @cStatement6 varchar(8000), @cStatement7 varchar(8000), @cStatement8 varchar(8000), @cStatement9 varchar(8000), @cStatement10 varchar(8000), @cStatement11 varchar(8000), @cStatement12 varchar(500), @cStatement1 varchar(255), @DestCMPANYID smallint select @iStatus = 0, @cStatement = '', @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '', @cStatement8 = '', @cStatement9 = '', @cStatement10 = '', @cStatement11 = '', @cStatement12 = '', @cStatement1 = '', @DestCMPANYID = 0 select @DestCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @I_vToCompany if (@I_vData = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..DD40700' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..DD40700 ( [INDXLONG],[MUPR_ddPayrunIndex] ) select [INDXLONG],[MUPR_ddPayrunIndex] from ' + rtrim(@I_vFromCompany) + '..DD40700 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40100 ( [FUTASUTA],[DSCRIPTN],[EPRIDNBR],[ESTIDNBR],[FUSUTXRT],[FUSUWLMT], [INTXSHAN],[INPRSTWG],[NOTEINDX],[Stat_Tax_ID],[TXENTYCD],[OTHSTDAT], [STCNTRLNUM],[SUPPDAT1],[SUPPDAT2],[EmployerKind] ) select [FUTASUTA],[DSCRIPTN],[EPRIDNBR],[ESTIDNBR],[FUSUTXRT],[FUSUWLMT], [INTXSHAN],[INPRSTWG],[NOTEINDX],[Stat_Tax_ID],[TXENTYCD],[OTHSTDAT], [STCNTRLNUM],[SUPPDAT1],[SUPPDAT2],[EmployerKind] from ' + rtrim(@I_vFromCompany) + '..UPR40100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40101' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40101 ( [FUTASUTA],[FUSUTSAD] ) select [FUTASUTA],[FUSUTSAD] from ' + rtrim(@I_vFromCompany) + '..UPR40101 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40104' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40104 ( [SETUPKEY],[MUPR_RetryInterval],[MUPR_MaxWaitTime] ) select [SETUPKEY],[MUPR_RetryInterval],[MUPR_MaxWaitTime] from ' + rtrim(@I_vFromCompany) + '..UPR40104 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40200' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40200 ( [SETUPKEY],[AUTOVRTM],[REGHRSRQ],[LSFUTADT],[LSSUTADT],[LSWCMPDT], [USRDFPR1],[USRDRPR2],[COMPCHID],[MLCHBKID],[UPRNPNUM],[UPRNANUM], [NXCTRNUM],[NXMTRNUM],[KPYCHKHS],[KPPTRHST],[KPYGLDST],[EDFINFLD], [DSPYRTRX],[CalcTipAlloc],[TipAllocRate],[TRKDYWKD],[TRKWKWKD],[PAYRTDEC], [DEDTNDEC],[BNFTDCML],[CHKFRMAT],[SCKTMAVLPWD],[VCTAVLPWD],[Benefit_YTD_Amts], [Deduction_YTD_Amts],[Local_Taxes_YTD_Amts],[Pay_Code_YTD_Amts],[State_Taxes_YTD_Amts],[PYFTRDEC],[Enable_Fiscal_Tracking], [Check_Print_Default] ) select [SETUPKEY],[AUTOVRTM],[REGHRSRQ],[LSFUTADT],[LSSUTADT],[LSWCMPDT], [USRDFPR1],[USRDRPR2],[COMPCHID],[MLCHBKID],[UPRNPNUM],[UPRNANUM], [NXCTRNUM],[NXMTRNUM],[KPYCHKHS],[KPPTRHST],[KPYGLDST],[EDFINFLD], [DSPYRTRX],[CalcTipAlloc],[TipAllocRate],[TRKDYWKD],[TRKWKWKD],[PAYRTDEC], [DEDTNDEC],[BNFTDCML],[CHKFRMAT],[SCKTMAVLPWD],[VCTAVLPWD],[Benefit_YTD_Amts], [Deduction_YTD_Amts],[Local_Taxes_YTD_Amts],[Pay_Code_YTD_Amts],[State_Taxes_YTD_Amts],[PYFTRDEC],[Enable_Fiscal_Tracking], [Check_Print_Default] from ' + rtrim(@I_vFromCompany) + '..UPR40200 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40201' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40201 ( [SETUPKEY],[AUTOASGNEMPID],[NEXTEMPID] ) select [SETUPKEY],[AUTOASGNEMPID],[NEXTEMPID] from ' + rtrim(@I_vFromCompany) + '..UPR40201 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40300' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40300 ( [DEPRTMNT],[DSCRIPTN],[AddlDesc],[NOTEINDX],[CHANGEBY_I],[CHANGEDATE_I] ) select [DEPRTMNT],[DSCRIPTN],[AddlDesc],[NOTEINDX],[CHANGEBY_I],[CHANGEDATE_I] from ' + rtrim(@I_vFromCompany) + '..UPR40300 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40301' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40301 ( [JOBTITLE],[DSCRIPTN],[EEOCLASS_I],[FLSASTATUS],[REPORTSTOPOS],[REVIEWSETUPCODE_I], [SKILLSETNUMBER_I],[CHANGEBY_I],[CHANGEDATE_I],[NOTEINDX],[NOTEINDX2],[TXTFIELD] ) select [JOBTITLE],[DSCRIPTN],[EEOCLASS_I],[FLSASTATUS],[REPORTSTOPOS],[REVIEWSETUPCODE_I], [SKILLSETNUMBER_I],[CHANGEBY_I],[CHANGEDATE_I],[NOTEINDX],[NOTEINDX2],[TXTFIELD] from ' + rtrim(@I_vFromCompany) + '..UPR40301 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40500' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40500 ( [DEPRTMNT],[JOBTITLE],[PAYROLCD],[UPRACTYP],[ACTINDX] ) select [DEPRTMNT],[JOBTITLE],[PAYROLCD],[UPRACTYP],[ACTINDX] from ' + rtrim(@I_vFromCompany) + '..UPR40500 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40501' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40501 ( [TXEXOWTH],[TAXEXWTH],[DSCRIPTN] ) select [TXEXOWTH],[TAXEXWTH],[DSCRIPTN] from ' + rtrim(@I_vFromCompany) + '..UPR40501 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40600' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40600 ( [PAYRCORD],[DSCRIPTN],[INACTIVE],[PAYTYPE],[BSPAYRCD],[PAYRTAMT], [PAYUNIT],[PAYUNPER],[PAYPEROD],[PAYPRPRD],[MXPYPPER],[TipType], [PAYADVNC],[RPTASWGS],[W2BXNMBR],[W2BXLABL],[TAXABLE],[SBJTFDTX], [SBJTSSEC],[SBJTMCAR],[SBJTSTTX],[SBJTLTAX],[SBJTFUTA],[SBJTSUTA], [FFEDTXRT],[FLSTTXRT],[ACRUVACN],[ACRUSTIM],[NOTEINDX],[DATAENTDFLT], [SHFTCODE],[PAYFACTR],[BSDONRTE],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3], [W2BXLABL3],[W2BXNMBR4],[W2BXLABL4] ) select [PAYRCORD],[DSCRIPTN],[INACTIVE],[PAYTYPE],[BSPAYRCD],[PAYRTAMT], [PAYUNIT],[PAYUNPER],[PAYPEROD],[PAYPRPRD],[MXPYPPER],[TipType], [PAYADVNC],[RPTASWGS],[W2BXNMBR],[W2BXLABL],[TAXABLE],[SBJTFDTX], [SBJTSSEC],[SBJTMCAR],[SBJTSTTX],[SBJTLTAX],[SBJTFUTA],[SBJTSUTA], [FFEDTXRT],[FLSTTXRT],[ACRUVACN],[ACRUSTIM],[NOTEINDX],[DATAENTDFLT], [SHFTCODE],[PAYFACTR],[BSDONRTE],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3], [W2BXLABL3],[W2BXNMBR4],[W2BXLABL4] from ' + rtrim(@I_vFromCompany) + '..UPR40600 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40700' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40700 ( [WRKRCOMP],[STATECD],[DSCRIPTN],[WKCMPMTH],[WKCMPAMT],[WKCMPUNT], [WKCMPCNT],[WCMOTMTH],[WCWGLIMT],[NOTEINDX] ) select [WRKRCOMP],[STATECD],[DSCRIPTN],[WKCMPMTH],[WKCMPAMT],[WKCMPUNT], [WKCMPCNT],[WCMOTMTH],[WCWGLIMT],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR40700 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40800' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40800 ( [BENEFIT],[DSCRIPTN],[INACTIVE],[BNFBEGDT],[BNFENDDT],[VARBENFT], [BNFTFREQ],[TAXABLE],[SBJTFDTX],[SBJTSSEC],[SBJTMCAR],[SBJTSTTX], [SBJTLTAX],[SBJTFUTA],[SBJTSUTA],[FFEDTXRT],[FLSTTXRT],[BORCDTYP], [BSDORCDS],[BNFTMTHD],[BNFFRMLA],[BNFPRCNT_1],[BNFPRCNT_2],[BNFPRCNT_3], [BNFPRCNT_4],[BNFPRCNT_5],[BNFITAMT_1],[BNFITAMT_2],[BNFITAMT_3],[BNFITAMT_4], [BNFITAMT_5],[BNFTRMAX_1],[BNFTRMAX_2],[BNFTRMAX_3],[BNFTRMAX_4],[BNFTRMAX_5], [BNTRMXUN_1],[BNTRMXUN_2],[BNTRMXUN_3],[BNTRMXUN_4],[BNTRMXUN_5],[BNPAYPMX], [BNFYRMAX],[BNFLFMAX],[W2BXNMBR],[W2BXLABL],[NOTEINDX],[DATAENTDFLT], [EMPLRMAXMAT],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3],[W2BXLABL3],[W2BXNMBR4], [W2BXLABL4],[Benefit_Fiscal_Max] ) select [BENEFIT],[DSCRIPTN],[INACTIVE],[BNFBEGDT],[BNFENDDT],[VARBENFT], [BNFTFREQ],[TAXABLE],[SBJTFDTX],[SBJTSSEC],[SBJTMCAR],[SBJTSTTX], [SBJTLTAX],[SBJTFUTA],[SBJTSUTA],[FFEDTXRT],[FLSTTXRT],[BORCDTYP], [BSDORCDS],[BNFTMTHD],[BNFFRMLA],[BNFPRCNT_1],[BNFPRCNT_2],[BNFPRCNT_3], [BNFPRCNT_4],[BNFPRCNT_5],[BNFITAMT_1],[BNFITAMT_2],[BNFITAMT_3],[BNFITAMT_4], [BNFITAMT_5],[BNFTRMAX_1],[BNFTRMAX_2],[BNFTRMAX_3],[BNFTRMAX_4],[BNFTRMAX_5], [BNTRMXUN_1],[BNTRMXUN_2],[BNTRMXUN_3],[BNTRMXUN_4],[BNTRMXUN_5],[BNPAYPMX], [BNFYRMAX],[BNFLFMAX],[W2BXNMBR],[W2BXLABL],[NOTEINDX],[DATAENTDFLT], [EMPLRMAXMAT],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3],[W2BXLABL3],[W2BXNMBR4], [W2BXLABL4],[Benefit_Fiscal_Max] from ' + rtrim(@I_vFromCompany) + '..UPR40800 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40801' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40801 ( [BENEFIT],[BORCDTYP],[BSDONCDE] ) select [BENEFIT],[BORCDTYP],[BSDONCDE] from ' + rtrim(@I_vFromCompany) + '..UPR40801 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40900' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40900 ( [DEDUCTON],[DSCRIPTN],[INACTIVE],[DEDBEGDT],[DEDENDDT],[VARDEDTN], [DEDNFREQ],[TXSHANTY],[SFRFEDTX],[SHFRFICA],[SHFRSTTX],[SFRLCLTX], [BSDORCDS],[DEDNMTHD],[DEDFRMLA],[DEDCAMNT_1],[DEDCAMNT_2],[DEDCAMNT_3], [DEDCAMNT_4],[DEDCAMNT_5],[DEDNPRCT_1],[DEDNPRCT_2],[DEDNPRCT_3],[DEDNPRCT_4], [DEDNPRCT_5],[DEDTRMAX_1],[DEDTRMAX_2],[DEDTRMAX_3],[DEDTRMAX_4],[DEDTRMAX_5], [DETRMXUN_1],[DETRMXUN_2],[DETRMXUN_3],[DETRMXUN_4],[DETRMXUN_5],[DEPYPRMX], [DEDYRMAX],[DEDLTMAX],[W2BXNMBR],[W2BXLABL],[NOTEINDX],[DATAENTDFLT], [DEDTYPE],[GARNCAT],[EARNINGSCODE],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3], [W2BXLABL3],[W2BXNMBR4],[W2BXLABL4],[Deduction_Fiscal_Yr_Max],[SHFRFICAMED] ) select [DEDUCTON],[DSCRIPTN],[INACTIVE],[DEDBEGDT],[DEDENDDT],[VARDEDTN], [DEDNFREQ],[TXSHANTY],[SFRFEDTX],[SHFRFICA],[SHFRSTTX],[SFRLCLTX], [BSDORCDS],[DEDNMTHD],[DEDFRMLA],[DEDCAMNT_1],[DEDCAMNT_2],[DEDCAMNT_3], [DEDCAMNT_4],[DEDCAMNT_5],[DEDNPRCT_1],[DEDNPRCT_2],[DEDNPRCT_3],[DEDNPRCT_4], [DEDNPRCT_5],[DEDTRMAX_1],[DEDTRMAX_2],[DEDTRMAX_3],[DEDTRMAX_4],[DEDTRMAX_5], [DETRMXUN_1],[DETRMXUN_2],[DETRMXUN_3],[DETRMXUN_4],[DETRMXUN_5],[DEPYPRMX], [DEDYRMAX],[DEDLTMAX],[W2BXNMBR],[W2BXLABL],[NOTEINDX],[DATAENTDFLT], [DEDTYPE],[GARNCAT],[EARNINGSCODE],[W2BXNMBR2],[W2BXLABL2],[W2BXNMBR3], [W2BXLABL3],[W2BXNMBR4],[W2BXLABL4],[Deduction_Fiscal_Yr_Max],[SHFRFICAMED] from ' + rtrim(@I_vFromCompany) + '..UPR40900 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40901' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40901 ( [DEDUCTON],[BSDONCDE] ) select [DEDUCTON],[BSDONCDE] from ' + rtrim(@I_vFromCompany) + '..UPR40901 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR40902' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR40902 ( [DEDUCTON],[DEDNSQNC] ) select [DEDUCTON],[DEDNSQNC] from ' + rtrim(@I_vFromCompany) + '..UPR40902 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41100' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41100 ( [STATECD],[STATENAM] ) select [STATECD],[STATENAM] from ' + rtrim(@I_vFromCompany) + '..UPR41100 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41200' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41200 ( [EMPLCLAS],[DSCRIPTN],[DEPRTMNT],[JOBTITLE],[SUTASTAT],[WRKRCOMP], [MINETPAY],[WKHRPRYR],[WCACFPAY],[ACTINDX],[USERDEF1],[USERDEF2], [ATACRVAC],[VACCRMTH],[VACCRAMT],[VACAPRYR],[VACAVLBL],[WRNVCNFLSBLWZR], [ATACRSTM],[STMACMTH],[SKTMACAM],[SKTMHPYR],[SIKTIMAV],[WRNSTFLSBLWZR], [DEFLTCLS],[Calc_Min_Wage_Bal],[EMPLOYMENTTYPE],[NOTEINDX] ) select [EMPLCLAS],[DSCRIPTN],[DEPRTMNT],[JOBTITLE],[SUTASTAT],[WRKRCOMP], [MINETPAY],[WKHRPRYR],[WCACFPAY],[ACTINDX],[USERDEF1],[USERDEF2], [ATACRVAC],[VACCRMTH],[VACCRAMT],[VACAPRYR],[VACAVLBL],[WRNVCNFLSBLWZR], [ATACRSTM],[STMACMTH],[SKTMACAM],[SKTMHPYR],[SIKTIMAV],[WRNSTFLSBLWZR], [DEFLTCLS],[Calc_Min_Wage_Bal],[EMPLOYMENTTYPE],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR41200 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41201' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41201 ( [EMPLCLAS],[PYRLRTYP],[PAYROLCD] ) select [EMPLCLAS],[PYRLRTYP],[PAYROLCD] from ' + rtrim(@I_vFromCompany) + '..UPR41201 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41400' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41400 ( [LOCALTAX],[DSCRIPTN],[LCLTXCAL_1],[LCLTXCAL_2],[LCLTXCAL_3],[LCLTXCAL_4], [LCLTXCAL_5],[EXMTAMNT],[MNTXBLWG],[MYTDTXWG],[LCLTAXRT],[LCLTXAMT], [MAXPERYR],[INACTIVE],[NOTEINDX],[STDDMTHD],[STDDPCNT],[STDDEDAM], [STDEDMAX],[STDEDMIN],[TAXTYPE] ) select [LOCALTAX],[DSCRIPTN],[LCLTXCAL_1],[LCLTXCAL_2],[LCLTXCAL_3],[LCLTXCAL_4], [LCLTXCAL_5],[EXMTAMNT],[MNTXBLWG],[MYTDTXWG],[LCLTAXRT],[LCLTXAMT], [MAXPERYR],[INACTIVE],[NOTEINDX],[STDDMTHD],[STDDPCNT],[STDDEDAM], [STDEDMAX],[STDEDMIN],[TAXTYPE] from ' + rtrim(@I_vFromCompany) + '..UPR41400 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41401' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41401 ( [LOCALTAX],[TXTBLSEQ],[TXBRULMT],[TXBRKTAM],[RXBRKTRT],[TXBREXWG] ) select [LOCALTAX],[TXTBLSEQ],[TXBRULMT],[TXBRKTAM],[RXBRKTRT],[TXBREXWG] from ' + rtrim(@I_vFromCompany) + '..UPR41401 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41500' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41500 ( [SHFTCODE],[DSCRIPTN],[SHFTTYPE],[SHFTAMT],[SHFTPCT],[INACTIVE], [NOTEINDX] ) select [SHFTCODE],[DSCRIPTN],[SHFTTYPE],[SHFTAMT],[SHFTPCT],[INACTIVE], [NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR41500 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41700' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41700 ( [SUPERVISORCODE_I],[SUPERVISOR],[EMPLOYID],[NOTEINDX],[CHANGEBY_I],[CHANGEDATE_I] ) select [SUPERVISORCODE_I],[SUPERVISOR],[EMPLOYID],[NOTEINDX],[CHANGEBY_I],[CHANGEDATE_I] from ' + rtrim(@I_vFromCompany) + '..UPR41700 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41800' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41800 ( [MAXDEDUCTION],[DSCRIPTN],[STATEFED],[MAXMETHOD],[MAXPERCENT],[MAXEXEMPTAMT], [MINWAGEAMT],[EARNINGSCODE],[INCLUDEPREVSEQDED],[NOTEINDX] ) select [MAXDEDUCTION],[DSCRIPTN],[STATEFED],[MAXMETHOD],[MAXPERCENT],[MAXEXEMPTAMT], [MINWAGEAMT],[EARNINGSCODE],[INCLUDEPREVSEQDED],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR41800 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41801' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41801 ( [STATEFED],[DSCRIPTN] ) select [STATEFED],[DSCRIPTN] from ' + rtrim(@I_vFromCompany) + '..UPR41801 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41900' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41900 ( [EARNINGSCODE],[DSCRIPTN],[SFRFEDTX],[SHFRFICA],[SHFRSTTX],[SFRLCLTX], [NOTEINDX] ) select [EARNINGSCODE],[DSCRIPTN],[SFRFEDTX],[SHFRFICA],[SHFRSTTX],[SFRLCLTX], [NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR41900 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41901' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41901 ( [EARNINGSCODE],[PAYRCORD] ) select [EARNINGSCODE],[PAYRCORD] from ' + rtrim(@I_vFromCompany) + '..UPR41901 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR41902' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR41902 ( [EARNINGSCODE],[DEDUCTON] ) select [EARNINGSCODE],[DEDUCTON] from ' + rtrim(@I_vFromCompany) + '..UPR41902 ' exec(@cStatement) select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR42000' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR42000 ( [STATUSCD],[STSDESCR],[STATUSTYPE],[INACTIVE],[NOTEINDX] ) select [STATUSCD],[STSDESCR],[STATUSTYPE],[INACTIVE],[NOTEINDX] from ' + rtrim(@I_vFromCompany) + '..UPR42000 ' exec(@cStatement) end if (@I_vReportOptions = 1) begin select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR70500' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR70500 ( [FINRPTNM],[PRNTNOTS],[PRNTTYPE],[ASKECHTM],[INCLGNDS],[PRNTOFIL], [PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[RPTGRIND], [RTPACHIN],[RTGRSBIN],[SORTBY],[MTHSLCTD],[AUCTRLCD],[INCINEMP], [SFUTASUT],[STTACNCD],[STTEMPID],[STTEMNAM],[STRTDEPT],[STRTPYCD], [STTDEDCD],[STTBFTCD],[STTLTXCD],[STTSTXCD],[STTJBTIT],[STCHKNUM], [STRTDATE],[STRTPYDT],[STPSTDDT],[STTEMPCL],[STPRTKDT],[STTLOCID], [STRTSPRVSRCD],[ENAUCNCD],[EFUTASUT],[ENDEMPL],[ENEMPNAM],[ENDDEPT], [ENDPAYCD],[ENDEDCCD],[ENBNFTCD],[ELCLTXCD],[ENSTTXCD],[ENJBTITL], [ENCHKNUM],[ENDDATE],[ENDPAYDT],[ENPSTDDT],[ENEMPCLS],[EPRTKNDT], [ENDLOCID],[ENDSPRVSRCD],[SEGSRTBY]' select @cStatement2 = rtrim(@cStatement2)+rtrim(','+'[STTACNUM_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement3 = rtrim(@cStatement3)+rtrim(','+'[EACCNBR_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement4 = ',[RANGEBY],[EMPLINFO],[EMPLSUMM], [PAYCODES],[DEDUCTNS],[BENEFITS],[TAXINFOR],[STATETAX],[LOCALTX1], [YEAR1] ) select [FINRPTNM],[PRNTNOTS],[PRNTTYPE],[ASKECHTM],[INCLGNDS],[PRNTOFIL], [PRTOPRTR],[PRTOSCRN],[IFFILXST],[FILEXPNM],[EXPTTYPE],[RPTGRIND], [RTPACHIN],[RTGRSBIN],[SORTBY],[MTHSLCTD],[AUCTRLCD],[INCINEMP], [SFUTASUT],[STTACNCD],[STTEMPID],[STTEMNAM],[STRTDEPT],[STRTPYCD], [STTDEDCD],[STTBFTCD],[STTLTXCD],[STTSTXCD],[STTJBTIT],[STCHKNUM], [STRTDATE],[STRTPYDT],[STPSTDDT],[STTEMPCL],[STPRTKDT],[STTLOCID], [STRTSPRVSRCD],[ENAUCNCD],[EFUTASUT],[ENDEMPL],[ENEMPNAM],[ENDDEPT], [ENDPAYCD],[ENDEDCCD],[ENBNFTCD],[ELCLTXCD],[ENSTTXCD],[ENJBTITL], [ENCHKNUM],[ENDDATE],[ENDPAYDT],[ENPSTDDT],[ENEMPCLS],[EPRTKNDT], [ENDLOCID],[ENDSPRVSRCD],[SEGSRTBY]' select @cStatement5 = rtrim(@cStatement5)+rtrim(','+'[STTACNUM_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement6 = rtrim(@cStatement6)+rtrim(','+'[EACCNBR_'+ltrim(str(SGMTNUMB)))+']' from DYNAMICS..SY00302 select @cStatement7 = ',[RANGEBY],[EMPLINFO],[EMPLSUMM], [PAYCODES],[DEDUCTNS],[BENEFITS],[TAXINFOR],[STATETAX],[LOCALTX1], [YEAR1] from ' + rtrim(@I_vFromCompany) + '..UPR70500 ' exec(@cStatement+@cStatement2+@cStatement3+@cStatement4+@cStatement5+@cStatement6+@cStatement7) select @cStatement2 = '', @cStatement3 = '', @cStatement4 = '', @cStatement5 = '', @cStatement6 = '', @cStatement7 = '' select @cStatement =  'delete ' + rtrim(@I_vToCompany) +'..UPR70501' exec(@cStatement) select @cStatement =  ' insert into ' + rtrim(@I_vToCompany) +'..UPR70501 ( [RPTGRIND],[RTPACHIN],[RTGRSBIN],[CMPANYID] ) select [RPTGRIND],[RTPACHIN],[RTGRSBIN],[CMPANYID] from ' + rtrim(@I_vFromCompany) + '..UPR70501 ' exec(@cStatement) end select @cStatement = 'update ' + rtrim(@I_vToCompany) + '..UPR70501 set CMPANYID = ' + cast(@DestCMPANYID as varchar) exec(@cStatement) return 
GO
GRANT EXECUTE ON  [dbo].[eeCompanyCopyPR] TO [DYNGRP]
GO