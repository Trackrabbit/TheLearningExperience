SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateEmployeeDeduction] @I_vEMPLOYID char(15),     @I_vDEDUCTON char(6),     @I_vINACTIVE tinyint=0,     @I_vDEDBEGDT datetime='',     @I_vDEDENDDT datetime='',    @I_vVARDEDTN tinyint=null,    @I_vDEDNFREQ smallint=null,     @I_vSFRFEDTX tinyint=null,    @I_vSHFRFICA tinyint=null,    @I_vSHFRSTTX tinyint=null,    @I_vSFRLCLTX tinyint=null,    @I_vBSDORCDS smallint=null,    @I_vDEDNMTHD smallint=null,    @I_vDEDFRMLA smallint=null,    @I_vDEDNPRCT_1 numeric(19,5)=null,   @I_vDEDNPRCT_2 numeric(19,5)=null,   @I_vDEDNPRCT_3 numeric(19,5)=null,   @I_vDEDNPRCT_4 numeric(19,5)=null,   @I_vDEDNPRCT_5 numeric(19,5)=null,   @I_vDEDCAMNT_1 numeric(19,5)=null,   @I_vDEDCAMNT_2 numeric(19,5)=null,   @I_vDEDCAMNT_3 numeric(19,5)=null,   @I_vDEDCAMNT_4 numeric(19,5)=null,   @I_vDEDCAMNT_5 numeric(19,5)=null,   @I_vDEDTRMAX_1 numeric(19,5)=null,   @I_vDEDTRMAX_2 numeric(19,5)=null,   @I_vDEDTRMAX_3 numeric(19,5)=null,   @I_vDEDTRMAX_4 numeric(19,5)=null,   @I_vDEDTRMAX_5 numeric(19,5)=null,   @I_vDETRMXUN_1 numeric(19,5)=null,   @I_vDETRMXUN_2 numeric(19,5)=null,   @I_vDETRMXUN_3 numeric(19,5)=null,   @I_vDETRMXUN_4 numeric(19,5)=null,   @I_vDETRMXUN_5 numeric(19,5)=null,   @I_vDEPYPRMX numeric(19,5)=null,   @I_vDEDYRMAX numeric(19,5)=null,   @I_vDeduction_Fiscal_Yr_Max numeric(19,5)=null,  @I_vDEDLTMAX numeric(19,5)=null,   @I_vW2BXNMBR smallint=null,    @I_vW2BXLABL char(6)=null,    @I_vW2BXNMBR2 smallint=null,    @I_vW2BXLABL2 char(6)=null,    @I_vW2BXNMBR3 smallint=null,   @I_vW2BXLABL3 char(6)=null,    @I_vW2BXNMBR4 smallint=null,   @I_vW2BXLABL4 char(6)=null,    @I_vDATAENTDFLT tinyint=null,    @I_vUseDefaultCoDeduction smallint=1,   @I_vEARNINGSCODE char(15)=null,    @I_vCOURTDATE datetime=null,    @I_vCOURTNAME char(31)=null,    @I_vDOCDESCR char(31)=null,     @I_vORIGINALAMOUNT numeric(19,5)=null,  @I_vAMNTTAKEN numeric(19,5)=null,   @I_vFEDMAXDED char(15)=null,    @I_vSTATEMAXDED char(15)=null,    @I_vVENDORID char(15)=null,     @I_vUpdateIfExists tinyint=1,    @I_vRequesterTrx smallint=0,    @I_vUSRDEFND1 char(50) = '',        @I_vUSRDEFND2 char(50) = '',        @I_vUSRDEFND3 char(50) = '',        @I_vUSRDEFND4 varchar(8000) = '',   @I_vUSRDEFND5 varchar(8000) = '',   @I_vSHFRFICAMED tinyint = 0,     @O_iErrorState int output,    @oErrString varchar(255) output     with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @PAYPRPRD numeric(19,5),    @DEDNMTHD smallint,      @DEDTYPE tinyint,      @sCompanyID int,  @Enable_Fiscal_Tracking tinyint,     @iCustomState int,  @iStatus int,  @O_oErrorState int,  @nNextNoteIndex numeric(19,5),    @iGetNextNoteIdxErrState int,    @iError int,      @DBName char(50),     @iAddCodeErrState int  select  @PAYPRPRD = 0,      @DEDNMTHD = 0,  @DEDTYPE = 1,      @Enable_Fiscal_Tracking = 0,  @O_iErrorState = 0,     @O_oErrorState = 0,  @sCompanyID = CMPANYID from DYNAMICS..SY01500 where INTERID = db_name()  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateEmployeeDeductionPre  @I_vEMPLOYID output,  @I_vDEDUCTON output,  @I_vINACTIVE output,  @I_vDEDBEGDT output,  @I_vDEDENDDT output,  @I_vVARDEDTN output,  @I_vDEDNFREQ output,  @I_vSFRFEDTX output,  @I_vSHFRFICA output,  @I_vSHFRSTTX output,  @I_vSFRLCLTX output,  @I_vBSDORCDS output,  @I_vDEDNMTHD output,  @I_vDEDFRMLA output,  @I_vDEDNPRCT_1 output,  @I_vDEDNPRCT_2 output,  @I_vDEDNPRCT_3 output,  @I_vDEDNPRCT_4 output,  @I_vDEDNPRCT_5 output,  @I_vDEDCAMNT_1 output,  @I_vDEDCAMNT_2 output,  @I_vDEDCAMNT_3 output,  @I_vDEDCAMNT_4 output,  @I_vDEDCAMNT_5 output,  @I_vDEDTRMAX_1 output,  @I_vDEDTRMAX_2 output,  @I_vDEDTRMAX_3 output,  @I_vDEDTRMAX_4 output,  @I_vDEDTRMAX_5 output,  @I_vDETRMXUN_1 output,  @I_vDETRMXUN_2 output,  @I_vDETRMXUN_3 output,  @I_vDETRMXUN_4 output,  @I_vDETRMXUN_5 output,  @I_vDEPYPRMX output,  @I_vDEDYRMAX output,  @I_vDeduction_Fiscal_Yr_Max output,  @I_vDEDLTMAX output,  @I_vW2BXNMBR output,  @I_vW2BXLABL output,  @I_vW2BXNMBR2 output,   @I_vW2BXLABL2 output,   @I_vW2BXNMBR3 output,   @I_vW2BXLABL3 output,   @I_vW2BXNMBR4 output,   @I_vW2BXLABL4 output,   @I_vDATAENTDFLT output,  @I_vUseDefaultCoDeduction output,  @I_vEARNINGSCODE output,  @I_vCOURTDATE output,  @I_vCOURTNAME output,  @I_vDOCDESCR output,  @I_vORIGINALAMOUNT output,  @I_vAMNTTAKEN output,  @I_vFEDMAXDED output,  @I_vSTATEMAXDED output,  @I_vVENDORID output,  @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @I_vSHFRFICAMED output,   @O_iErrorState = @iCustomState output,  @oErrString = @oErrString  output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 4066    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vEMPLOYID is NULL or  @I_vDEDUCTON is NULL or  @I_vINACTIVE is NULL or  @I_vDEDBEGDT is NULL or  @I_vDEDENDDT is NULL or  @I_vUseDefaultCoDeduction is NULL or  @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL  ) begin  select @O_iErrorState = 4067    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @I_vEMPLOYID = UPPER(@I_vEMPLOYID),  @I_vDEDUCTON = UPPER(@I_vDEDUCTON),  @I_vEARNINGSCODE = UPPER(@I_vEARNINGSCODE),  @I_vFEDMAXDED = UPPER(@I_vFEDMAXDED),  @I_vSTATEMAXDED = UPPER(@I_vSTATEMAXDED),  @I_vVENDORID = UPPER(@I_vVENDORID)  if ( @I_vEMPLOYID = '' ) begin  select @O_iErrorState = 4068    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vEMPLOYID <> '' ) begin  if (not exists (select 1 from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID ))  begin  select @O_iErrorState = 4069    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@I_vEMPLOYID <> '') and (@I_vINACTIVE = 0) begin  if (exists (select 1 from UPR00100 (nolock) where EMPLOYID = @I_vEMPLOYID and INACTIVE = 1))  begin  select @I_vINACTIVE = 1  end  end   if ( @I_vDEDUCTON = '' ) begin  select @O_iErrorState = 4070    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDUCTON <> '' ) begin  if (not exists (select 1 from UPR40900 (nolock) where DEDUCTON = @I_vDEDUCTON ))  begin  select @O_iErrorState = 4071    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end  else   begin   select @DEDTYPE = DEDTYPE from UPR40900 (nolock) where DEDUCTON = @I_vDEDUCTON   end end  if ( @I_vUseDefaultCoDeduction < 0 or @I_vUseDefaultCoDeduction > 1 ) begin  select @O_iErrorState = 4072     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUseDefaultCoDeduction = 0 )  begin  select @I_vVARDEDTN =  case  WHEN @I_vVARDEDTN is null   THEN 0  ELSE @I_vVARDEDTN  end,  @I_vDEDNFREQ =  case  WHEN @I_vDEDNFREQ is null  THEN 1  ELSE @I_vDEDNFREQ  end,  @I_vSFRFEDTX =  case  WHEN @I_vSFRFEDTX is null   THEN 0  ELSE @I_vSFRFEDTX  end,  @I_vSHFRFICA =  case  WHEN @I_vSHFRFICA is null   THEN 0  ELSE @I_vSHFRFICA  end,  @I_vSHFRSTTX =  case  WHEN @I_vSHFRSTTX is null   THEN 0  ELSE @I_vSHFRSTTX  end,  @I_vSFRLCLTX =  case  WHEN @I_vSFRLCLTX is null  THEN 0  ELSE @I_vSFRLCLTX  end,  @I_vBSDORCDS =  case  WHEN @I_vBSDORCDS is null   THEN 0  ELSE @I_vBSDORCDS  end,  @I_vDEDNMTHD =  case  WHEN @I_vDEDNMTHD is null   THEN 1  ELSE @I_vDEDNMTHD  end,  @I_vDEDFRMLA =  case  WHEN @I_vDEDFRMLA is null  THEN 0  ELSE @I_vDEDFRMLA  end,  @I_vDEDNPRCT_1 =  case  WHEN @I_vDEDNPRCT_1 is null  THEN 0  ELSE @I_vDEDNPRCT_1  end,  @I_vDEDNPRCT_2 =  case  WHEN @I_vDEDNPRCT_2 is null  THEN 0  ELSE @I_vDEDNPRCT_2  end,  @I_vDEDNPRCT_3 =  case  WHEN @I_vDEDNPRCT_3 is null  THEN 0  ELSE @I_vDEDNPRCT_3  end,  @I_vDEDNPRCT_4 =  case  WHEN @I_vDEDNPRCT_4 is null  THEN 0  ELSE @I_vDEDNPRCT_4  end,  @I_vDEDNPRCT_5 =  case  WHEN @I_vDEDNPRCT_5 is null  THEN 0  ELSE @I_vDEDNPRCT_5  end,  @I_vDEDCAMNT_1 =  case  WHEN @I_vDEDCAMNT_1 is null  THEN 0  ELSE @I_vDEDCAMNT_1  end,  @I_vDEDCAMNT_2 =  case  WHEN @I_vDEDCAMNT_2 is null  THEN 0  ELSE @I_vDEDCAMNT_2  end,  @I_vDEDCAMNT_3 =  case  WHEN @I_vDEDCAMNT_3 is null  THEN 0  ELSE @I_vDEDCAMNT_3  end,  @I_vDEDCAMNT_4 =  case  WHEN @I_vDEDCAMNT_4 is null  THEN 0  ELSE @I_vDEDCAMNT_4  end,  @I_vDEDCAMNT_5 =  case  WHEN @I_vDEDCAMNT_5 is null  THEN 0  ELSE @I_vDEDCAMNT_5  end,   @I_vDEDTRMAX_1 =  case  WHEN @I_vDEDTRMAX_1 is null  THEN 0  ELSE @I_vDEDTRMAX_1  end,  @I_vDEDTRMAX_2 =  case  WHEN @I_vDEDTRMAX_2 is null  THEN 0  ELSE @I_vDEDTRMAX_2  end,  @I_vDEDTRMAX_3 =  case  WHEN @I_vDEDTRMAX_3 is null  THEN 0  ELSE @I_vDEDTRMAX_3  end,  @I_vDEDTRMAX_4 =  case  WHEN @I_vDEDTRMAX_4 is null  THEN 0  ELSE @I_vDEDTRMAX_4  end,  @I_vDEDTRMAX_5 =  case  WHEN @I_vDEDTRMAX_5 is null  THEN 0  ELSE @I_vDEDTRMAX_5  end,  @I_vDETRMXUN_1 =  case  WHEN @I_vDETRMXUN_1 is null  THEN 0  ELSE @I_vDETRMXUN_1   end,  @I_vDETRMXUN_2 =  case  WHEN @I_vDETRMXUN_2 is null  THEN 0  ELSE @I_vDETRMXUN_2  end,  @I_vDETRMXUN_3 =  case  WHEN @I_vDETRMXUN_3 is null  THEN 0  ELSE @I_vDETRMXUN_3  end,  @I_vDETRMXUN_4 =  case  WHEN @I_vDETRMXUN_4 is null  THEN 0  ELSE @I_vDETRMXUN_4  end,  @I_vDETRMXUN_5 =  case  WHEN @I_vDETRMXUN_5 is null  THEN 0  ELSE @I_vDETRMXUN_5  end,  @I_vDEPYPRMX =  case  WHEN @I_vDEPYPRMX is null  THEN 0  ELSE @I_vDEPYPRMX  end,  @I_vDEDYRMAX =  case  WHEN @I_vDEDYRMAX is null   THEN 0  ELSE @I_vDEDYRMAX  end,  @I_vDeduction_Fiscal_Yr_Max =       case  WHEN @I_vDeduction_Fiscal_Yr_Max is null  THEN 0   ELSE @I_vDeduction_Fiscal_Yr_Max  end,  @I_vDEDLTMAX =  case  WHEN @I_vDEDLTMAX is null  THEN 0  ELSE @I_vDEDLTMAX  end,  @I_vW2BXNMBR =  case  WHEN @I_vW2BXNMBR is null   THEN 0  ELSE @I_vW2BXNMBR  end,  @I_vW2BXLABL =  case  WHEN @I_vW2BXLABL is null   THEN ''  ELSE @I_vW2BXLABL  end,  @I_vW2BXNMBR2 =  case  WHEN @I_vW2BXNMBR2 is null   THEN 0  ELSE @I_vW2BXNMBR2  end,   @I_vW2BXLABL2  =  case  WHEN @I_vW2BXLABL2 is null  THEN ''  ELSE @I_vW2BXLABL2  end,  @I_vW2BXNMBR3 =  case  WHEN @I_vW2BXNMBR3 is null   THEN 0  ELSE @I_vW2BXNMBR3  end,   @I_vW2BXLABL3  =  case  WHEN @I_vW2BXLABL3 is null  THEN ''  ELSE @I_vW2BXLABL3  end,  @I_vW2BXNMBR4 =  case  WHEN @I_vW2BXNMBR4 is null   THEN 0  ELSE @I_vW2BXNMBR4  end,   @I_vW2BXLABL4 =  case  WHEN @I_vW2BXLABL4 is null  THEN ''  ELSE @I_vW2BXLABL4  end,  @I_vDATAENTDFLT =  case  WHEN @I_vDATAENTDFLT is null   THEN 0  ELSE @I_vDATAENTDFLT  end,  @I_vEARNINGSCODE =   case  WHEN @I_vEARNINGSCODE is null  THEN ''  ELSE @I_vEARNINGSCODE   end,  @I_vCOURTDATE =   case  WHEN @I_vCOURTDATE is null  THEN ''  ELSE @I_vCOURTDATE  end,  @I_vCOURTNAME =   case   WHEN @I_vCOURTNAME is null  THEN ''  ELSE @I_vCOURTNAME  end,  @I_vDOCDESCR =  case   WHEN @I_vDOCDESCR is null  THEN ''  ELSE @I_vDOCDESCR  end,  @I_vORIGINALAMOUNT =   case  WHEN @I_vORIGINALAMOUNT is null   THEN 0  ELSE @I_vORIGINALAMOUNT  end,  @I_vAMNTTAKEN =  case  WHEN @I_vAMNTTAKEN is null  THEN 0  ELSE @I_vAMNTTAKEN  end,  @I_vFEDMAXDED =   case  WHEN @I_vFEDMAXDED is null  THEN ''  ELSE @I_vFEDMAXDED  end,   @I_vSTATEMAXDED =  case  WHEN @I_vSTATEMAXDED is null  THEN ''  ELSE @I_vSTATEMAXDED  end,  @I_vVENDORID =  case  WHEN @I_vVENDORID is null  THEN ''  ELSE @I_vVENDORID  end,  @I_vSHFRFICAMED =      case   WHEN @I_vSHFRFICAMED is null  THEN 0  ELSE @I_vSHFRFICAMED  end  end   if ( @I_vUseDefaultCoDeduction = 1 ) begin  select @I_vDEDBEGDT =  case  WHEN @I_vDEDBEGDT = ''  THEN DEDBEGDT  ELSE @I_vDEDBEGDT   end,  @I_vVARDEDTN =  case  WHEN @I_vVARDEDTN is null   THEN VARDEDTN  ELSE @I_vVARDEDTN  end,  @I_vDEDNFREQ =  case  WHEN @I_vDEDNFREQ is null   THEN DEDNFREQ  ELSE @I_vDEDNFREQ  end,  @I_vSFRFEDTX =  case  WHEN @I_vSFRFEDTX is null   THEN SFRFEDTX  ELSE @I_vSFRFEDTX  end,  @I_vSHFRFICA =  case  WHEN @I_vSHFRFICA is null   THEN SHFRFICA  ELSE @I_vSHFRFICA  end,  @I_vSHFRSTTX =  case  WHEN @I_vSHFRSTTX is null   THEN SHFRSTTX  ELSE @I_vSHFRSTTX  end,  @I_vSFRLCLTX =  case  WHEN @I_vSFRLCLTX is null   THEN SFRLCLTX  ELSE @I_vSFRLCLTX  end,  @I_vBSDORCDS =  case  WHEN @I_vBSDORCDS is null   THEN BSDORCDS  ELSE @I_vBSDORCDS  end,  @I_vDEDNMTHD =  case  WHEN @I_vDEDNMTHD is null   THEN DEDNMTHD  ELSE @I_vDEDNMTHD  end,  @I_vDEDFRMLA =  case  WHEN @I_vDEDFRMLA is null   THEN DEDFRMLA  ELSE @I_vDEDFRMLA  end,  @I_vDEDNPRCT_1 =  case  WHEN @I_vDEDNPRCT_1 is null  THEN DEDNPRCT_1  ELSE @I_vDEDNPRCT_1  end,  @I_vDEDNPRCT_2 =  case  WHEN @I_vDEDNPRCT_2 is null  THEN DEDNPRCT_2  ELSE @I_vDEDNPRCT_2  end,  @I_vDEDNPRCT_3 =  case  WHEN @I_vDEDNPRCT_3 is null  THEN DEDNPRCT_3  ELSE @I_vDEDNPRCT_3  end,  @I_vDEDNPRCT_4 =  case  WHEN @I_vDEDNPRCT_4 is null  THEN DEDNPRCT_4  ELSE @I_vDEDNPRCT_4  end,  @I_vDEDNPRCT_5 =  case  WHEN @I_vDEDNPRCT_5 is null  THEN DEDNPRCT_5  ELSE @I_vDEDNPRCT_5  end,  @I_vDEDCAMNT_1 =  case  WHEN @I_vDEDCAMNT_1 is null  THEN DEDCAMNT_1  ELSE @I_vDEDCAMNT_1  end,  @I_vDEDCAMNT_2  =  case  WHEN @I_vDEDCAMNT_2 is null  THEN DEDCAMNT_2  ELSE @I_vDEDCAMNT_2  end,  @I_vDEDCAMNT_3 =  case  WHEN @I_vDEDCAMNT_3 is null  THEN DEDCAMNT_3  ELSE @I_vDEDCAMNT_3  end,  @I_vDEDCAMNT_4 =  case  WHEN @I_vDEDCAMNT_4 is null  THEN DEDCAMNT_4  ELSE @I_vDEDCAMNT_4  end,  @I_vDEDCAMNT_5 =  case  WHEN @I_vDEDCAMNT_5 is null  THEN DEDCAMNT_5  ELSE @I_vDEDCAMNT_5  end,  @I_vDEDTRMAX_1 =  case  WHEN @I_vDEDTRMAX_1 is null  THEN DEDTRMAX_1  ELSE @I_vDEDTRMAX_1  end,  @I_vDEDTRMAX_2 =  case  WHEN @I_vDEDTRMAX_2 is null  THEN DEDTRMAX_2  ELSE @I_vDEDTRMAX_2  end,  @I_vDEDTRMAX_3 =  case  WHEN @I_vDEDTRMAX_3 is null  THEN DEDTRMAX_3  ELSE @I_vDEDTRMAX_3  end,  @I_vDEDTRMAX_4 =  case  WHEN @I_vDEDTRMAX_4 is null  THEN DEDTRMAX_4  ELSE @I_vDEDTRMAX_4  end,  @I_vDEDTRMAX_5 =  case  WHEN @I_vDEDTRMAX_5 is null  THEN DEDTRMAX_5  ELSE @I_vDEDTRMAX_5  end,  @I_vDETRMXUN_1 =  case  WHEN @I_vDETRMXUN_1 is null  THEN DETRMXUN_1  ELSE @I_vDETRMXUN_1  end,  @I_vDETRMXUN_2 =  case  WHEN @I_vDETRMXUN_2 is null  THEN DETRMXUN_2  ELSE @I_vDETRMXUN_2  end,  @I_vDETRMXUN_3 =  case  WHEN @I_vDETRMXUN_3 is null  THEN DETRMXUN_3  ELSE @I_vDETRMXUN_3  end,  @I_vDETRMXUN_4 =  case  WHEN @I_vDETRMXUN_4 is null  THEN DETRMXUN_4  ELSE @I_vDETRMXUN_4  end,  @I_vDETRMXUN_5 =  case  WHEN @I_vDETRMXUN_5 is null  THEN DETRMXUN_5  ELSE @I_vDETRMXUN_5  end,  @I_vDEPYPRMX =  case  WHEN @I_vDEPYPRMX is null   THEN DEPYPRMX  ELSE @I_vDEPYPRMX  end,  @I_vDEDYRMAX =  case  WHEN @I_vDEDYRMAX is null  THEN DEDYRMAX  ELSE @I_vDEDYRMAX  end,  @I_vDeduction_Fiscal_Yr_Max =       case  WHEN @I_vDeduction_Fiscal_Yr_Max is null  THEN Deduction_Fiscal_Yr_Max  ELSE @I_vDeduction_Fiscal_Yr_Max  end,  @I_vDEDLTMAX =  case  WHEN @I_vDEDLTMAX is null  THEN DEDLTMAX  ELSE @I_vDEDLTMAX  end,  @I_vW2BXNMBR =  case  WHEN @I_vW2BXNMBR is null  THEN W2BXNMBR  ELSE @I_vW2BXNMBR  end,  @I_vW2BXLABL =  case  WHEN @I_vW2BXLABL is null   THEN W2BXLABL  ELSE @I_vW2BXLABL  end,  @I_vW2BXNMBR2  =  case  WHEN @I_vW2BXNMBR2 is null   THEN W2BXNMBR2  ELSE @I_vW2BXNMBR2  end,  @I_vW2BXLABL2  =  case  WHEN @I_vW2BXLABL2 is null  THEN W2BXLABL2  ELSE @I_vW2BXLABL2  end,  @I_vW2BXNMBR3  =  case  WHEN @I_vW2BXNMBR3 is null   THEN W2BXNMBR3  ELSE @I_vW2BXNMBR3  end,  @I_vW2BXLABL3  =  case  WHEN @I_vW2BXLABL3 is null  THEN W2BXLABL3  ELSE @I_vW2BXLABL3  end,   @I_vW2BXNMBR4  =  case  WHEN @I_vW2BXNMBR4 is null   THEN W2BXNMBR4  ELSE @I_vW2BXNMBR4  end,  @I_vW2BXLABL4  =  case  WHEN @I_vW2BXLABL4 is null  THEN W2BXLABL4  ELSE @I_vW2BXLABL4  end,   @I_vDATAENTDFLT =  case  WHEN @I_vDATAENTDFLT is null   THEN DATAENTDFLT  ELSE @I_vDATAENTDFLT  end,  @I_vEARNINGSCODE =   case  WHEN @I_vEARNINGSCODE is null  THEN EARNINGSCODE  ELSE @I_vEARNINGSCODE   end,  @I_vCOURTDATE =   case  WHEN @I_vCOURTDATE is null  THEN ''  ELSE @I_vCOURTDATE  end,  @I_vCOURTNAME =   case   WHEN @I_vCOURTNAME is null  THEN ''  ELSE @I_vCOURTNAME  end,  @I_vDOCDESCR =  case   WHEN @I_vDOCDESCR is null  THEN ''  ELSE @I_vDOCDESCR  end,  @I_vORIGINALAMOUNT =   case  WHEN @I_vORIGINALAMOUNT is null   THEN 0  ELSE @I_vORIGINALAMOUNT  end,  @I_vAMNTTAKEN =  case  WHEN @I_vAMNTTAKEN is null  THEN 0  ELSE @I_vAMNTTAKEN  end,  @I_vFEDMAXDED =   case  WHEN @I_vFEDMAXDED is null  THEN ''  ELSE @I_vFEDMAXDED  end,   @I_vSTATEMAXDED =  case  WHEN @I_vSTATEMAXDED is null  THEN ''  ELSE @I_vSTATEMAXDED  end,  @I_vVENDORID =  case  WHEN @I_vVENDORID is null  THEN ''  ELSE @I_vVENDORID  end,  @I_vSHFRFICAMED =      case   WHEN @I_vSHFRFICAMED is null  THEN SHFRFICAMED  ELSE @I_vSHFRFICAMED  end   from UPR40900 (nolock) where DEDUCTON = @I_vDEDUCTON end  select @Enable_Fiscal_Tracking = Enable_Fiscal_Tracking from UPR40200 (nolock)  if (@Enable_Fiscal_Tracking = 0)  begin   select @I_vDeduction_Fiscal_Yr_Max = 0 end  select @DEDNMTHD = DEDNMTHD from UPR40900 (nolock) where DEDUCTON = @I_vDEDUCTON  if (@I_vDEDNMTHD = 4 and @DEDNMTHD = 5) begin  select @O_iErrorState = 20169     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vINACTIVE < 0 or @I_vINACTIVE > 1 ) begin  select @O_iErrorState = 4073     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDBEGDT = '' ) begin  select @O_iErrorState = 4074     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vBSDORCDS < 0 or @I_vBSDORCDS >1 ) begin  select @O_iErrorState = 4075     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSFRFEDTX < 0 or @I_vSFRFEDTX > 1 ) begin  select @O_iErrorState = 4562     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSHFRFICA < 0 or @I_vSHFRFICA > 1 ) begin  select @O_iErrorState = 4563     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSHFRSTTX < 0 or @I_vSHFRSTTX > 1 ) begin  select @O_iErrorState = 4564     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSFRLCLTX < 0 or @I_vSFRLCLTX > 1 ) begin  select @O_iErrorState = 4565     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNFREQ < 1 or @I_vDEDNFREQ > 8 ) begin  select @O_iErrorState = 4566     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNMTHD < 1 or @I_vDEDNMTHD > 5 ) begin  select @O_iErrorState = 4567     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA < 0 or @I_vDEDFRMLA > 1 ) begin  select @O_iErrorState = 4568     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNPRCT_1 < 0 ) begin  select @O_iErrorState = 4569     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNPRCT_2 < 0 ) begin  select @O_iErrorState = 4570     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNPRCT_3 < 0 ) begin  select @O_iErrorState = 4571     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNPRCT_4 < 0 ) begin  select @O_iErrorState = 4572     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNPRCT_5 < 0 ) begin  select @O_iErrorState = 4573     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEPYPRMX > @I_vDEDYRMAX ) and ( @I_vDEDYRMAX <> 0 ) begin  select @O_iErrorState = 4574     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEPYPRMX > @I_vDEDLTMAX ) and ( @I_vDEDLTMAX <> 0 ) begin  select @O_iErrorState = 4575     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDYRMAX > @I_vDEDLTMAX ) and ( @I_vDEDLTMAX <> 0 ) begin  select @O_iErrorState = 4576     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vDeduction_Fiscal_Yr_Max > @I_vDEDYRMAX) and (@I_vDEDYRMAX > 0) begin  select @O_iErrorState = 20193     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR < 0 or @I_vW2BXNMBR > 99) begin  select @O_iErrorState = 4577     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR2 < 0 or @I_vW2BXNMBR2 > 99) begin  select @O_iErrorState = 11307     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vW2BXNMBR3 < 0 or @I_vW2BXNMBR3 > 99) begin  select @O_iErrorState = 11308     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vW2BXNMBR4 < 0 or @I_vW2BXNMBR4 > 99) begin  select @O_iErrorState = 11309     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end   if (@I_vDeduction_Fiscal_Yr_Max < 0)  begin  select @O_iErrorState = 20192     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vVARDEDTN = 0 and @I_vDATAENTDFLT = 1 )  begin  select @O_iErrorState = 4578     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNMTHD = 1 or @I_vDEDNMTHD = 2) and (@I_vDEDCAMNT_1 <> 0 or @I_vDEDCAMNT_2 <> 0 or @I_vDEDCAMNT_3 <> 0 or @I_vDEDCAMNT_4 <> 0 or @I_vDEDCAMNT_5 <> 0 )  begin  select @O_iErrorState = 4579     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNMTHD = 3 or @I_vDEDNMTHD = 4) and (@I_vDEDNPRCT_1 <> 0 or @I_vDEDNPRCT_2 <> 0 or @I_vDEDNPRCT_3 <> 0 or @I_vDEDNPRCT_4 <> 0 or @I_vDEDNPRCT_5 <> 0 )  begin  select @O_iErrorState = 4580      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNMTHD <> 4 ) and ( @I_vDETRMXUN_1 <> 0 or @I_vDETRMXUN_2 <> 0 or @I_vDETRMXUN_3 <> 0 or @I_vDETRMXUN_4 <> 0 or @I_vDETRMXUN_5 <> 0 )  begin  select @O_iErrorState = 4581      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 0 ) and ( @I_vDEDCAMNT_2 <> 0 or @I_vDEDCAMNT_3 <> 0 or @I_vDEDCAMNT_4 <> 0 or @I_vDEDCAMNT_5 <> 0 or @I_vDEDTRMAX_1 <> 0 or @I_vDEDTRMAX_2 <> 0 or @I_vDEDTRMAX_3 <> 0 or @I_vDEDTRMAX_4 <> 0 or @I_vDEDTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4582     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDNMTHD = 2 ) and ( @I_vSFRFEDTX <> 0 or @I_vSHFRFICA <> 0 or @I_vSHFRSTTX <> 0 or @I_vSFRLCLTX <> 0 ) begin  select @O_iErrorState = 4583     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDEDTRMAX_2 <> 0 ) and ( @I_vDEDTRMAX_1 > @I_vDEDTRMAX_2 ) begin  select @O_iErrorState = 4584     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDEDTRMAX_3 <> 0 ) and ( @I_vDEDTRMAX_2 > @I_vDEDTRMAX_3 ) begin  select @O_iErrorState = 4585     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDEDTRMAX_4 <> 0 ) and ( @I_vDEDTRMAX_3 > @I_vDEDTRMAX_4 ) begin  select @O_iErrorState = 2729     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDEDTRMAX_5 <> 0 ) and ( @I_vDEDTRMAX_4 > @I_vDEDTRMAX_5 ) begin  select @O_iErrorState = 4160     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDETRMXUN_2 <> 0 ) and ( @I_vDETRMXUN_1 > @I_vDETRMXUN_2 ) begin  select @O_iErrorState = 4161     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDETRMXUN_3 <> 0 ) and ( @I_vDETRMXUN_2 > @I_vDETRMXUN_3 ) begin  select @O_iErrorState = 4162     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDETRMXUN_4 <> 0 ) and ( @I_vDETRMXUN_3 > @I_vDETRMXUN_4 ) begin  select @O_iErrorState = 4163     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDEDFRMLA = 1 ) and ( @I_vDETRMXUN_5 <> 0 ) and ( @I_vDETRMXUN_4 > @I_vDETRMXUN_5 ) begin  select @O_iErrorState = 4164     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDATAENTDFLT < 0 or @I_vDATAENTDFLT > 1 ) begin  select @O_iErrorState = 4165     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1)  begin  select @O_iErrorState = 4166     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@DEDTYPE = 1)  begin   if (   @I_vCOURTDATE <> '' or   @I_vCOURTNAME <> '' or   @I_vDOCDESCR <> '' or   @I_vORIGINALAMOUNT <> 0 or   @I_vAMNTTAKEN <> 0 or  @I_vFEDMAXDED <> '' or   @I_vSTATEMAXDED <> '' or   @I_vVENDORID <> ''  )  begin  select @O_iErrorState = 20178    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@DEDTYPE = 2)  begin   if (   @I_vDEDYRMAX <> 0 or   @I_vDEDYRMAX <> 0 or   @I_vDEDLTMAX <> 0 or   @I_vSFRFEDTX <> 0 or   @I_vSHFRFICA <> 0 or   @I_vSHFRSTTX <> 0 or  @I_vSFRLCLTX <> 0 or   @I_vBSDORCDS <> 0 or   @I_vDEDFRMLA <> 0 or  @I_vSHFRFICAMED <> 0   )  begin  select @O_iErrorState = 20179    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if (@I_vFEDMAXDED <> '')  begin  if (not exists (select 1 from UPR41800 (nolock) where MAXDEDUCTION = @I_vFEDMAXDED))  begin  select @O_iErrorState = 20180     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@I_vSTATEMAXDED <> '')  begin  if (not exists (select 1 from UPR41800 (nolock) where MAXDEDUCTION = @I_vSTATEMAXDED))  begin  select @O_iErrorState = 20194     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@DEDTYPE = 2) and (@I_vDEDNMTHD = 4)  begin  select @O_iErrorState = 20195     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vEARNINGSCODE <> '') and (@I_vDEDNMTHD <> 5) begin  select @O_iErrorState = 20196     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vEARNINGSCODE <> '') begin  if (not exists (select 1 from UPR41900 (nolock) where EARNINGSCODE = @I_vEARNINGSCODE))  begin  select @O_iErrorState = 20197     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if (@I_vVENDORID <> '')  begin  if (not exists (select 1 from PM00200 (nolock) where VENDORID = @I_vVENDORID))  begin  select @O_iErrorState = 20198     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end   if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1)  begin  select @O_iErrorState = 3685     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSHFRFICAMED < 0 or @I_vSHFRFICAMED > 1) begin  select @O_iErrorState = 11995     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState = 4176   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if not exists(select 1 from UPR00500 where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vDEDUCTON ) begin  insert UPR00500(  EMPLOYID,  DEDUCTON,  INACTIVE,  DEDBEGDT,  DEDENDDT,  VARDEDTN,  DEDNFREQ,  TXSHANTY,  SFRFEDTX,  SHFRFICA,  SHFRSTTX,  SFRLCLTX,  BSDORCDS,  DEDNMTHD,  DEDFRMLA,  DEDNPRCT_1,  DEDNPRCT_2,  DEDNPRCT_3,  DEDNPRCT_4,  DEDNPRCT_5,  DEDCAMNT_1,  DEDCAMNT_2,  DEDCAMNT_3,  DEDCAMNT_4,  DEDCAMNT_5,  DEDTRMAX_1,  DEDTRMAX_2,  DEDTRMAX_3,  DEDTRMAX_4,  DEDTRMAX_5,  DETRMXUN_1,  DETRMXUN_2,  DETRMXUN_3,  DETRMXUN_4,  DETRMXUN_5,  DEPYPRMX,  DEDYRMAX,  DEDLTMAX,  W2BXNMBR,  W2BXLABL,  LTDDEDTN,  NOTEINDX,  NOTEINDX2,  DATAENTDFLT,  EARNINGSCODE,  COURTDATE,  COURTNAME,  DOCDESCR,  ORIGINALAMOUNT,  AMNTTAKEN,  VENDORID,  FEDMAXDED,  STATEMAXDED,  W2BXNMBR2,   W2BXLABL2,   W2BXNMBR3,   W2BXLABL3,   W2BXNMBR4,   W2BXLABL4,  Deduction_Fiscal_Yr_Max,  SHFRFICAMED   )  select  @I_vEMPLOYID,    @I_vDEDUCTON,    @I_vINACTIVE,    @I_vDEDBEGDT,    @I_vDEDENDDT,    @I_vVARDEDTN,    @I_vDEDNFREQ,    case     WHEN @I_vSFRFEDTX = 1 or @I_vSHFRFICA = 1 or @I_vSHFRSTTX = 1 or @I_vSFRLCLTX = 1  THEN 1  ELSE 0  end,   @I_vSFRFEDTX,    @I_vSHFRFICA,    @I_vSHFRSTTX,    @I_vSFRLCLTX,    @I_vBSDORCDS,    @I_vDEDNMTHD,    @I_vDEDFRMLA,    @I_vDEDNPRCT_1,    @I_vDEDNPRCT_2,    @I_vDEDNPRCT_3,    @I_vDEDNPRCT_4,    @I_vDEDNPRCT_5,    @I_vDEDCAMNT_1,    @I_vDEDCAMNT_2,    @I_vDEDCAMNT_3,    @I_vDEDCAMNT_4,    @I_vDEDCAMNT_5,    @I_vDEDTRMAX_1,    @I_vDEDTRMAX_2,    @I_vDEDTRMAX_3,    @I_vDEDTRMAX_4,    @I_vDEDTRMAX_5,    @I_vDETRMXUN_1 * 100,   @I_vDETRMXUN_2 * 100,   @I_vDETRMXUN_3 * 100,   @I_vDETRMXUN_4 * 100,   @I_vDETRMXUN_5 * 100,   @I_vDEPYPRMX,    @I_vDEDYRMAX,    @I_vDEDLTMAX,    @I_vW2BXNMBR,    @I_vW2BXLABL,    0,       @nNextNoteIndex,   0,       @I_vDATAENTDFLT,   @I_vEARNINGSCODE,   @I_vCOURTDATE,    @I_vCOURTNAME,    @I_vDOCDESCR,    @I_vORIGINALAMOUNT,   @I_vAMNTTAKEN,    @I_vVENDORID,    @I_vFEDMAXDED,    @I_vSTATEMAXDED,   @I_vW2BXNMBR2,     @I_vW2BXLABL2,     @I_vW2BXNMBR3,     @I_vW2BXLABL3,     @I_vW2BXNMBR4,    @I_vW2BXLABL4,    @I_vDeduction_Fiscal_Yr_Max ,  @I_vSHFRFICAMED     if (@@error <> 0)  begin  select @O_iErrorState = 4177     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end else if ( @I_vUpdateIfExists = 1 ) begin  update UPR00500 set  INACTIVE = @I_vINACTIVE,   DEDBEGDT =  case  WHEN @I_vDEDBEGDT = ''  THEN DEDBEGDT  ELSE @I_vDEDBEGDT  end,  DEDENDDT =  case  WHEN @I_vDEDENDDT = ''  THEN DEDENDDT  ELSE @I_vDEDENDDT  end,  VARDEDTN = @I_vVARDEDTN,  DEDNFREQ = @I_vDEDNFREQ,  SFRFEDTX = @I_vSFRFEDTX,  SHFRFICA = @I_vSHFRFICA,  SHFRSTTX = @I_vSHFRSTTX,  SFRLCLTX = @I_vSFRLCLTX,  BSDORCDS = @I_vBSDORCDS,  DEDNMTHD = @I_vDEDNMTHD,  DEDFRMLA = @I_vDEDFRMLA,  DEDNPRCT_1 =  case   WHEN @I_vDEDNMTHD > 2 and @I_vDEDNMTHD < 5  THEN 0  ELSE @I_vDEDNPRCT_1  end,  DEDNPRCT_2 =  case  WHEN @I_vDEDNMTHD > 2 and @I_vDEDNMTHD < 5  THEN 0  ELSE @I_vDEDNPRCT_2  end,  DEDNPRCT_3 =  case  WHEN @I_vDEDNMTHD > 2 and @I_vDEDNMTHD < 5  THEN 0  ELSE @I_vDEDNPRCT_3  end,  DEDNPRCT_4 =  case  WHEN @I_vDEDNMTHD > 2 and @I_vDEDNMTHD < 5  THEN 0  ELSE @I_vDEDNPRCT_4  end,  DEDNPRCT_5 =  case  WHEN @I_vDEDNMTHD > 2 and @I_vDEDNMTHD < 5  THEN 0  ELSE @I_vDEDNPRCT_5  end,  DEDCAMNT_1 =   case  WHEN @I_vDEDNMTHD > 0 and @I_vDEDNMTHD < 3  THEN 0  ELSE @I_vDEDCAMNT_1  end,  DEDCAMNT_2 =  case  WHEN @I_vDEDNMTHD > 0 and @I_vDEDNMTHD < 3  THEN 0  ELSE @I_vDEDCAMNT_2  end,  DEDCAMNT_3 =  case  WHEN @I_vDEDNMTHD > 0 and @I_vDEDNMTHD < 3  THEN 0  ELSE @I_vDEDCAMNT_3  end,  DEDCAMNT_4 =  case  WHEN @I_vDEDNMTHD > 0 and @I_vDEDNMTHD < 3  THEN 0  ELSE @I_vDEDCAMNT_4  end,  DEDCAMNT_5 =  case  WHEN @I_vDEDNMTHD > 0 and @I_vDEDNMTHD < 3  THEN 0  ELSE @I_vDEDCAMNT_5  end,  DEDTRMAX_1 =  case  WHEN @I_vDEDFRMLA = 0  THEN 0  ELSE @I_vDEDTRMAX_1  end,  DEDTRMAX_2 =  case  WHEN @I_vDEDFRMLA = 0  THEN 0  ELSE @I_vDEDTRMAX_2  end,  DEDTRMAX_3 =  case  WHEN @I_vDEDFRMLA = 0  THEN 0  ELSE @I_vDEDTRMAX_3  end,  DEDTRMAX_4 =  case  WHEN @I_vDEDFRMLA = 0  THEN 0  ELSE @I_vDEDTRMAX_4  end,  DEDTRMAX_5 =  case  WHEN @I_vDEDFRMLA = 0  THEN 0  ELSE @I_vDEDTRMAX_5  end,  DETRMXUN_1 =  case  WHEN @I_vDEDNMTHD <> 4  THEN 0  ELSE @I_vDETRMXUN_1 * 100  end,  DETRMXUN_2 =  case  WHEN @I_vDEDNMTHD <> 4  THEN 0  ELSE @I_vDETRMXUN_2 * 100  end,  DETRMXUN_3 =  case  WHEN @I_vDEDNMTHD <> 4  THEN 0  ELSE @I_vDETRMXUN_3 * 100  end,  DETRMXUN_4 =  case  WHEN @I_vDEDNMTHD <> 4  THEN 0  ELSE @I_vDETRMXUN_4 * 100  end,  DETRMXUN_5 =  case  WHEN @I_vDEDNMTHD <> 4  THEN 0  ELSE @I_vDETRMXUN_5 * 100  end,  DEPYPRMX= @I_vDEPYPRMX,  DEDYRMAX = @I_vDEDYRMAX,  Deduction_Fiscal_Yr_Max = @I_vDeduction_Fiscal_Yr_Max,    DEDLTMAX= @I_vDEDLTMAX,  EARNINGSCODE  = @I_vEARNINGSCODE,   COURTDATE = @I_vCOURTDATE,   COURTNAME = @I_vCOURTNAME,   DOCDESCR = @I_vDOCDESCR,   ORIGINALAMOUNT = @I_vORIGINALAMOUNT,   AMNTTAKEN = @I_vAMNTTAKEN,   VENDORID = @I_vVENDORID,   FEDMAXDED = @I_vFEDMAXDED,   STATEMAXDED = @I_vSTATEMAXDED,   W2BXNMBR = @I_vW2BXNMBR,  W2BXLABL = @I_vW2BXLABL,  W2BXNMBR2 = @I_vW2BXNMBR2,  W2BXLABL2 = @I_vW2BXLABL2,  W2BXNMBR3 = @I_vW2BXNMBR3,  W2BXLABL3 = @I_vW2BXLABL3,  W2BXNMBR4 = @I_vW2BXNMBR4,  W2BXLABL4 = @I_vW2BXLABL4,  SHFRFICAMED = @I_vSHFRFICAMED   where EMPLOYID = @I_vEMPLOYID and DEDUCTON = @I_vDEDUCTON  if (@@error <> 0)  begin  select @O_iErrorState = 4179     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  end end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = taCreateEmployeeDeductionPost  @I_vEMPLOYID,  @I_vDEDUCTON,  @I_vINACTIVE,  @I_vDEDBEGDT,  @I_vDEDENDDT,  @I_vVARDEDTN,  @I_vDEDNFREQ,  @I_vSFRFEDTX,  @I_vSHFRFICA,  @I_vSHFRSTTX,  @I_vSFRLCLTX,  @I_vBSDORCDS,  @I_vDEDNMTHD,  @I_vDEDFRMLA,  @I_vDEDNPRCT_1,  @I_vDEDNPRCT_2,  @I_vDEDNPRCT_3,  @I_vDEDNPRCT_4,  @I_vDEDNPRCT_5,  @I_vDEDCAMNT_1,  @I_vDEDCAMNT_2,  @I_vDEDCAMNT_3,  @I_vDEDCAMNT_4,  @I_vDEDCAMNT_5,  @I_vDEDTRMAX_1,  @I_vDEDTRMAX_2,  @I_vDEDTRMAX_3,  @I_vDEDTRMAX_4,  @I_vDEDTRMAX_5,  @I_vDETRMXUN_1,  @I_vDETRMXUN_2,  @I_vDETRMXUN_3,  @I_vDETRMXUN_4,  @I_vDETRMXUN_5,  @I_vDEPYPRMX,  @I_vDEDYRMAX,  @I_vDeduction_Fiscal_Yr_Max,  @I_vDEDLTMAX,  @I_vW2BXNMBR,  @I_vW2BXLABL,  @I_vW2BXNMBR2,   @I_vW2BXLABL2,   @I_vW2BXNMBR3,   @I_vW2BXLABL3,   @I_vW2BXNMBR4,   @I_vW2BXLABL4,  @I_vDATAENTDFLT,  @I_vUseDefaultCoDeduction,  @I_vEARNINGSCODE,  @I_vCOURTDATE,  @I_vCOURTNAME,  @I_vDOCDESCR,  @I_vORIGINALAMOUNT,  @I_vAMNTTAKEN,  @I_vFEDMAXDED,  @I_vSTATEMAXDED,  @I_vVENDORID,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @I_vSHFRFICAMED,   @O_iErrorState = @iCustomState output,  @oErrString = @oErrString  output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 4180     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateEmployeeDeduction] TO [DYNGRP]
GO
