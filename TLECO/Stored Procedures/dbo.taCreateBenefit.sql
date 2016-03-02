SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taCreateBenefit] @I_vBENEFIT char(6),     @I_vDSCRIPTN char(30),     @I_vINACTIVE tinyint = 0,    @I_vBNFBEGDT datetime,     @I_vBNFENDDT datetime='',    @I_vVARBENFT tinyint=0,     @I_vBNFTFREQ smallint=1,     @I_vSBJTFDTX tinyint=0,     @I_vSBJTSSEC tinyint=0,     @I_vSBJTMCAR tinyint=0,     @I_vSBJTSTTX tinyint=0,     @I_vSBJTLTAX tinyint=0,     @I_vSBJTFUTA tinyint=0,     @I_vSBJTSUTA tinyint=0,     @I_vFFEDTXRT numeric(19,2)=0,    @I_vFLSTTXRT numeric(19,2)=0,    @I_vBORCDTYP smallint=1,    @I_vBSDORCDS smallint=0,    @I_vBNFTMTHD smallint=1,     @I_vBNFFRMLA smallint=0,    @I_vBNFPRCNT_1 numeric(19,5)=0,    @I_vBNFPRCNT_2 numeric(19,5)=0,    @I_vBNFPRCNT_3 numeric(19,5)=0,    @I_vBNFPRCNT_4 numeric(19,5)=0,    @I_vBNFPRCNT_5 numeric(19,5)=0,    @I_vBNFITAMT_1 numeric(19,5)=0,    @I_vBNFITAMT_2 numeric(19,5)=0,    @I_vBNFITAMT_3 numeric(19,5)=0,    @I_vBNFITAMT_4 numeric(19,5)=0,    @I_vBNFITAMT_5 numeric(19,5)=0,    @I_vBNFTRMAX_1 numeric(19,5)=0,    @I_vBNFTRMAX_2 numeric(19,5)=0,    @I_vBNFTRMAX_3 numeric(19,5)=0,    @I_vBNFTRMAX_4 numeric(19,5)=0,    @I_vBNFTRMAX_5 numeric(19,5)=0,    @I_vBNTRMXUN_1 numeric(19,5)=0,    @I_vBNTRMXUN_2 numeric(19,5)=0,    @I_vBNTRMXUN_3 numeric(19,5)=0,    @I_vBNTRMXUN_4 numeric(19,5)=0,    @I_vBNTRMXUN_5 numeric(19,5)=0,    @I_vBNPAYPMX numeric(19,5)=0,    @I_vBNFYRMAX numeric(19,5)=0,    @I_vBenefit_Fiscal_Max numeric(19,5)=0,  @I_vBNFLFMAX numeric(19,5)=0,    @I_vW2BXNMBR smallint=0,    @I_vW2BXLABL char(6)='',    @I_vW2BXNMBR2 smallint=0,    @I_vW2BXLABL2 char(6)='',    @I_vW2BXNMBR3 smallint=0,   @I_vW2BXLABL3 char(6)='',    @I_vW2BXNMBR4 smallint=0,   @I_vW2BXLABL4 char(6)='',    @I_vDATAENTDFLT tinyint=0,    @I_vEMPLRMAXMAT numeric(19,5)=0,   @I_vUpdateIfExists tinyint = 1,    @I_vRequesterTrx smallint = 0,    @I_vUSRDEFND1 char(50) = '',        @I_vUSRDEFND2 char(50) = '',        @I_vUSRDEFND3 char(50) = '',        @I_vUSRDEFND4 varchar(8000) = '',   @I_vUSRDEFND5 varchar(8000) = '',   @O_iErrorState int output,    @oErrString varchar(255) output     with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @TAXABLE tinyint,     @sCompanyID int,  @Enable_Fiscal_Tracking tinyint,     @iStatus int,  @iCustomState int,  @iCustomErrString varchar(255),  @nNextNoteIndex numeric(19,5),     @iGetNextNoteIdxErrState int,    @iAddCodeErrState int,  @O_oErrorState int,  @iError int      select  @TAXABLE = 0,      @Enable_Fiscal_Tracking = 0,  @O_iErrorState = 0,     @sCompanyID = CMPANYID from DYNAMICS..SY01500 where INTERID = db_name()  if (@oErrString is NULL) begin  select @oErrString = '' end  exec @iStatus = taCreateBenefitPre  @I_vBENEFIT output,  @I_vDSCRIPTN output,  @I_vINACTIVE output,  @I_vBNFBEGDT output,  @I_vBNFENDDT output,  @I_vVARBENFT output,  @I_vBNFTFREQ output,  @I_vSBJTFDTX output,  @I_vSBJTSSEC output,  @I_vSBJTMCAR output,  @I_vSBJTSTTX output,  @I_vSBJTLTAX output,  @I_vSBJTFUTA output,  @I_vSBJTSUTA output,  @I_vFFEDTXRT output,  @I_vFLSTTXRT output,  @I_vBORCDTYP output,  @I_vBSDORCDS output,  @I_vBNFTMTHD output,  @I_vBNFFRMLA output,  @I_vBNFPRCNT_1 output,  @I_vBNFPRCNT_2 output,  @I_vBNFPRCNT_3 output,  @I_vBNFPRCNT_4 output,  @I_vBNFPRCNT_5 output,  @I_vBNFITAMT_1 output,  @I_vBNFITAMT_2 output,  @I_vBNFITAMT_3 output,  @I_vBNFITAMT_4 output,  @I_vBNFITAMT_5 output,  @I_vBNFTRMAX_1 output,  @I_vBNFTRMAX_2 output,  @I_vBNFTRMAX_3 output,  @I_vBNFTRMAX_4 output,  @I_vBNFTRMAX_5 output,  @I_vBNTRMXUN_1 output,  @I_vBNTRMXUN_2 output,  @I_vBNTRMXUN_3 output,  @I_vBNTRMXUN_4 output,  @I_vBNTRMXUN_5 output,  @I_vBNPAYPMX output,  @I_vBNFYRMAX output,  @I_vBenefit_Fiscal_Max output,      @I_vBNFLFMAX output,  @I_vW2BXNMBR output,  @I_vW2BXLABL output,  @I_vW2BXNMBR2 output,  @I_vW2BXLABL2 output,  @I_vW2BXNMBR3 output,  @I_vW2BXLABL3 output,  @I_vW2BXNMBR4 output,  @I_vW2BXLABL4 output,  @I_vDATAENTDFLT output,  @I_vEMPLRMAXMAT output,     @I_vUpdateIfExists output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState = @iCustomState output,  @oErrString = @oErrString  output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 4220    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  if (  @I_vBENEFIT is NULL or  @I_vDSCRIPTN is NULL or   @I_vINACTIVE is NULL or  @I_vBNFBEGDT is NULL or  @I_vBNFENDDT is NULL or  @I_vVARBENFT is NULL or  @I_vBNFTFREQ is NULL or  @I_vSBJTFDTX is NULL or  @I_vSBJTSSEC is NULL or  @I_vSBJTMCAR is NULL or  @I_vSBJTSTTX is NULL or  @I_vSBJTLTAX is NULL or  @I_vSBJTFUTA is NULL or  @I_vSBJTSUTA is NULL or  @I_vFFEDTXRT is NULL or  @I_vFLSTTXRT is NULL or  @I_vBORCDTYP is NULL or  @I_vBSDORCDS is NULL or  @I_vBNFTMTHD is NULL or  @I_vBNFFRMLA is NULL or  @I_vBNFPRCNT_1 is NULL or  @I_vBNFPRCNT_2 is NULL or  @I_vBNFPRCNT_3 is NULL or  @I_vBNFPRCNT_4 is NULL or  @I_vBNFPRCNT_5 is NULL or  @I_vBNFITAMT_1 is NULL or  @I_vBNFITAMT_2 is NULL or  @I_vBNFITAMT_3 is NULL or  @I_vBNFITAMT_4 is NULL or  @I_vBNFITAMT_5 is NULL or  @I_vBNFTRMAX_1 is NULL or  @I_vBNFTRMAX_2 is NULL or  @I_vBNFTRMAX_3 is NULL or  @I_vBNFTRMAX_4 is NULL or  @I_vBNFTRMAX_5 is NULL or  @I_vBNTRMXUN_1 is NULL or  @I_vBNTRMXUN_2 is NULL or  @I_vBNTRMXUN_3 is NULL or  @I_vBNTRMXUN_4 is NULL or  @I_vBNTRMXUN_5 is NULL or  @I_vBNPAYPMX is NULL or  @I_vBNFYRMAX is NULL or  @I_vBenefit_Fiscal_Max is NULL or     @I_vBNFLFMAX is NULL or  @I_vW2BXNMBR is NULL or  @I_vW2BXLABL is NULL or  @I_vW2BXNMBR2 is NULL or  @I_vW2BXLABL2 is NULL or  @I_vW2BXNMBR3 is NULL or  @I_vW2BXLABL3 is NULL or  @I_vW2BXNMBR4 is NULL or  @I_vW2BXLABL4 is NULL or  @I_vDATAENTDFLT is NULL or  @I_vEMPLRMAXMAT is NULL or      @I_vUpdateIfExists is NULL or  @I_vRequesterTrx is NULL or  @I_vUSRDEFND1 is NULL or  @I_vUSRDEFND2 is NULL or  @I_vUSRDEFND3 is NULL or  @I_vUSRDEFND4 is NULL or  @I_vUSRDEFND5 is NULL   ) begin  select @O_iErrorState = 4221    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  select @Enable_Fiscal_Tracking = Enable_Fiscal_Tracking from UPR40200 (nolock)  if (@Enable_Fiscal_Tracking = 0)  begin   select @I_vBenefit_Fiscal_Max = 0 end  select @I_vBENEFIT =UPPER(@I_vBENEFIT)  if ( @I_vBENEFIT = '' ) begin  select @O_iErrorState = 4222    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDSCRIPTN = '' ) begin  select @O_iErrorState = 4223    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vINACTIVE < 0 or @I_vINACTIVE > 1 ) begin  select @O_iErrorState = 4224     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vBNFBEGDT = '' ) begin  select @O_iErrorState = 4225    exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vVARBENFT < 0 or @I_vVARBENFT > 1 ) begin  select @O_iErrorState = 4242     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTFREQ < 1 or @I_vBNFTFREQ > 8 ) begin  select @O_iErrorState = 4243     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTFDTX < 0 or @I_vSBJTFDTX > 1 ) begin  select @O_iErrorState = 4244     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTSSEC < 0 or @I_vSBJTSSEC > 1 ) begin  select @O_iErrorState = 4245     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTMCAR < 0 or @I_vSBJTMCAR > 1 ) begin  select @O_iErrorState = 4246     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTSTTX < 0 or @I_vSBJTSTTX > 1 ) begin  select @O_iErrorState = 4247     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTLTAX < 0 or @I_vSBJTLTAX > 1 ) begin  select @O_iErrorState = 4248     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTFUTA < 0 or @I_vSBJTFUTA > 1 ) begin  select @O_iErrorState = 4587     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTSUTA < 0 or @I_vSBJTSUTA > 1 ) begin  select @O_iErrorState = 4249     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTFDTX = 0 ) and ( @I_vFFEDTXRT > 0 ) begin  select @O_iErrorState = 4250     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vFFEDTXRT < 0 or @I_vFFEDTXRT > 99.99 )  begin  select @O_iErrorState = 4251     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTSTTX = 0 ) and ( @I_vFLSTTXRT > 0 ) begin  select @O_iErrorState = 4252     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vFLSTTXRT < 0 or @I_vFLSTTXRT > 99.99 )  begin  select @O_iErrorState = 4253     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBORCDTYP < 1 or @I_vBORCDTYP > 2 ) begin  select @O_iErrorState = 4254     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBSDORCDS < 0 or @I_vBSDORCDS > 1 )  begin  select @O_iErrorState = 4255     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD < 1 or @I_vBNFTMTHD > 5 ) begin  select @O_iErrorState = 4256    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 2 ) and ( @I_vSBJTFDTX = 1 or @I_vSBJTSSEC = 1 or @I_vSBJTMCAR = 1 or @I_vSBJTSTTX = 1 or @I_vSBJTLTAX = 1 or @I_vSBJTFUTA = 1 or @I_vSBJTSUTA = 1) begin  select @O_iErrorState = 4257     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBORCDTYP = 1 ) begin  select @O_iErrorState = 4258     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBORCDTYP = 2 ) and ( @I_vBSDORCDS = 0 ) begin  select @O_iErrorState = 4259     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 5 ) and ( @I_vBORCDTYP = 2 ) begin  select @O_iErrorState = 4260     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA < 0 or @I_vBNFFRMLA > 1 ) begin  select @O_iErrorState = 4261      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vVARBENFT = 1 ) and ( @I_vBNFFRMLA = 1 ) begin  select @O_iErrorState = 4262     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR > 99) begin  select @O_iErrorState = 4588     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR2 > 99) begin  select @O_iErrorState = 11313     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR3 > 99) begin  select @O_iErrorState = 11314     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vW2BXNMBR4 > 99) begin  select @O_iErrorState = 11315     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vSBJTFDTX = 1 or @I_vSBJTSSEC = 1 or @I_vSBJTMCAR = 1 or @I_vSBJTSTTX = 1 or @I_vSBJTLTAX = 1 or @I_vSBJTFUTA = 1 or @I_vSBJTSUTA = 1 ) begin  select @TAXABLE = 1  end   if ( @I_vDATAENTDFLT < 0 or @I_vDATAENTDFLT > 1 ) begin  select @O_iErrorState = 4589     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vDATAENTDFLT = 1 and @I_vVARBENFT = 0 )  begin  select @O_iErrorState = 5322     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD <> 3 and @I_vEMPLRMAXMAT > 0 ) begin  select @O_iErrorState = 5324     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vEMPLRMAXMAT < 0 or @I_vEMPLRMAXMAT > 100 )  begin  select @O_iErrorState = 5323     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vUpdateIfExists < 0 or @I_vUpdateIfExists > 1 ) begin  select @O_iErrorState = 4590     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vRequesterTrx < 0 or @I_vRequesterTrx > 1 ) begin  select @O_iErrorState = 3662     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNPAYPMX < 0 )  begin  select @O_iErrorState = 4263     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFYRMAX < 0 )  begin  select @O_iErrorState = 4264     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vBenefit_Fiscal_Max < 0)  begin  select @O_iErrorState = 20186     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFLFMAX < 0 )  begin  select @O_iErrorState = 4265     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNPAYPMX > @I_vBNFYRMAX ) and ( @I_vBNFYRMAX > 0 ) begin  select @O_iErrorState = 4266     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if (@I_vBenefit_Fiscal_Max > @I_vBNFLFMAX)  begin  select @O_iErrorState = 20187     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNPAYPMX > @I_vBNFLFMAX ) and ( @I_vBNFLFMAX > 0 ) begin  select @O_iErrorState = 4267     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFYRMAX > @I_vBNFLFMAX ) and ( @I_vBNFLFMAX > 0 ) begin  select @O_iErrorState = 4268     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFPRCNT_1 < 0 )  begin  select @O_iErrorState = 4269     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFPRCNT_2 < 0 )  begin  select @O_iErrorState = 4270     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFPRCNT_3 < 0 )  begin  select @O_iErrorState = 4271     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFPRCNT_4 < 0 )  begin  select @O_iErrorState = 4272     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFPRCNT_5 < 0 )  begin  select @O_iErrorState = 4273     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFITAMT_1 < 0 )  begin  select @O_iErrorState = 4274     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFITAMT_2 < 0 )  begin  select @O_iErrorState = 4275     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFITAMT_3 < 0 )  begin  select @O_iErrorState = 4276     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFITAMT_4 < 0 )  begin  select @O_iErrorState = 4277     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFITAMT_5 < 0 )  begin  select @O_iErrorState = 4278     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 1 ) and ( @I_vBNFITAMT_1 <> 0 or @I_vBNFITAMT_2 <> 0 or @I_vBNFITAMT_3 <> 0 or @I_vBNFITAMT_4 <> 0 or @I_vBNFITAMT_5 <> 0 ) begin  select @O_iErrorState = 4279     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 1 ) and ( @I_vBNTRMXUN_1 <> 0 or @I_vBNTRMXUN_2 <> 0 or @I_vBNTRMXUN_3 <> 0 or @I_vBNTRMXUN_4 <> 0 or @I_vBNTRMXUN_5 <> 0 ) begin  select @O_iErrorState = 4280     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 1 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFPRCNT_2 <> 0 or @I_vBNFPRCNT_3 <> 0 or @I_vBNFPRCNT_4 <> 0 or @I_vBNFPRCNT_5 <> 0 ) begin  select @O_iErrorState = 4281     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 1 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFTRMAX_2 <> 0 or @I_vBNFTRMAX_3 <> 0 or @I_vBNFTRMAX_4 <> 0 or @I_vBNFTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4282     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 2 ) and ( @I_vBNFITAMT_1 <> 0 or @I_vBNFITAMT_2 <> 0 or @I_vBNFITAMT_3 <> 0 or @I_vBNFITAMT_4 <> 0 or @I_vBNFITAMT_5 <> 0 ) begin  select @O_iErrorState = 4283     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 2 ) and ( @I_vBNTRMXUN_1 <> 0 or @I_vBNTRMXUN_2 <> 0 or @I_vBNTRMXUN_3 <> 0 or @I_vBNTRMXUN_4 <> 0 or @I_vBNTRMXUN_5 <> 0 ) begin  select @O_iErrorState = 4284     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 2 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFPRCNT_2 <> 0 or @I_vBNFPRCNT_3 <> 0 or @I_vBNFPRCNT_4 <> 0 or @I_vBNFPRCNT_5 <> 0 ) begin  select @O_iErrorState = 4285     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 2 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFTRMAX_2 <> 0 or @I_vBNFTRMAX_3 <> 0 or @I_vBNFTRMAX_4 <> 0 or @I_vBNFTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4286     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBNFITAMT_1 <> 0 or @I_vBNFITAMT_2 <> 0 or @I_vBNFITAMT_3 <> 0 or @I_vBNFITAMT_4 <> 0 or @I_vBNFITAMT_5 <> 0 ) begin  select @O_iErrorState = 4287     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBNTRMXUN_1 <> 0 or @I_vBNTRMXUN_2 <> 0 or @I_vBNTRMXUN_3 <> 0 or @I_vBNTRMXUN_4 <> 0 or @I_vBNTRMXUN_5 <> 0 ) begin  select @O_iErrorState = 4288     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFPRCNT_2 <> 0 or @I_vBNFPRCNT_3 <> 0 or @I_vBNFPRCNT_4 <> 0 or @I_vBNFPRCNT_5 <> 0 ) begin  select @O_iErrorState = 4289     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 3 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFTRMAX_2 <> 0 or @I_vBNFTRMAX_3 <> 0 or @I_vBNFTRMAX_4 <> 0 or @I_vBNFTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4290     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 4 ) and ( @I_vBNFPRCNT_1 <> 0 or @I_vBNFPRCNT_2 <> 0 or @I_vBNFPRCNT_3 <> 0 or @I_vBNFPRCNT_4 <> 0 or @I_vBNFPRCNT_5 <> 0 ) begin  select @O_iErrorState = 4291     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 4 ) and ( @I_vBNTRMXUN_1 <> 0 or @I_vBNTRMXUN_2 <> 0 or @I_vBNTRMXUN_3 <> 0 or @I_vBNTRMXUN_4 <> 0 or @I_vBNTRMXUN_5 <> 0 ) begin  select @O_iErrorState = 4292     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 4 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFITAMT_2 <> 0 or @I_vBNFITAMT_3 <> 0 or @I_vBNFITAMT_4 <> 0 or @I_vBNFITAMT_5 <> 0 ) begin  select @O_iErrorState = 4293     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 4 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFTRMAX_2 <> 0 or @I_vBNFTRMAX_3 <> 0 or @I_vBNFTRMAX_4 <> 0 or @I_vBNFTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4294     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 5 ) and ( @I_vBNFPRCNT_1 <> 0 or @I_vBNFPRCNT_2 <> 0 or @I_vBNFPRCNT_3 <> 0 or @I_vBNFPRCNT_4 <> 0 or @I_vBNFPRCNT_5 <> 0 ) begin  select @O_iErrorState = 4295     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 5 ) and ( @I_vBNFTRMAX_1 <> 0 or @I_vBNFTRMAX_2 <> 0 or @I_vBNFTRMAX_3 <> 0 or @I_vBNFTRMAX_4 <> 0 or @I_vBNFTRMAX_5 <> 0 ) begin  select @O_iErrorState = 4296     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 5 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNFITAMT_2 <> 0 or @I_vBNFITAMT_3 <> 0 or @I_vBNFITAMT_4 <> 0 or @I_vBNFITAMT_5 <> 0 ) begin  select @O_iErrorState = 4297     exec @iStatus = taUpdateString   @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFTMTHD = 5 ) and ( @I_vBNFFRMLA = 0 ) and ( @I_vBNTRMXUN_2 <> 0 or @I_vBNTRMXUN_3 <> 0 or @I_vBNTRMXUN_4 <> 0 or @I_vBNTRMXUN_5 <> 0 ) begin  select @O_iErrorState = 4298     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_2 <> 0 ) and ( @I_vBNFTRMAX_1 > @I_vBNFTRMAX_2 ) begin  select @O_iErrorState = 4299     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_3 <> 0 ) and ( @I_vBNFTRMAX_2 > @I_vBNFTRMAX_3 ) begin  select @O_iErrorState = 4300     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_4 <> 0 ) and ( @I_vBNFTRMAX_3 > @I_vBNFTRMAX_4 ) begin  select @O_iErrorState = 4301      exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_5 <> 0 ) and ( @I_vBNFTRMAX_4 > @I_vBNFTRMAX_5 ) begin  select @O_iErrorState = 4302     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_3 <> 0 ) and ( @I_vBNFTRMAX_1 > @I_vBNFTRMAX_3 ) begin  select @O_iErrorState = 1701     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_4 <> 0 ) and ( @I_vBNFTRMAX_1 > @I_vBNFTRMAX_4 ) begin  select @O_iErrorState = 1702     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_5 <> 0 ) and ( @I_vBNFTRMAX_1 > @I_vBNFTRMAX_5 ) begin  select @O_iErrorState = 1703     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_4 <> 0 ) and ( @I_vBNFTRMAX_2 > @I_vBNFTRMAX_4 ) begin  select @O_iErrorState = 1704     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_5 <> 0 ) and ( @I_vBNFTRMAX_2 > @I_vBNFTRMAX_5 ) begin  select @O_iErrorState = 1705     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNFTRMAX_5 <> 0 ) and ( @I_vBNFTRMAX_3 > @I_vBNFTRMAX_5 ) begin  select @O_iErrorState = 1706     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_2 <> 0 ) and ( @I_vBNTRMXUN_1 > @I_vBNTRMXUN_2 ) begin  select @O_iErrorState = 4303     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_3 <> 0 ) and ( @I_vBNTRMXUN_2 > @I_vBNTRMXUN_3 ) begin  select @O_iErrorState = 4304     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_4 <> 0 ) and ( @I_vBNTRMXUN_3 > @I_vBNTRMXUN_4 ) begin  select @O_iErrorState = 4226     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_5 <> 0 ) and ( @I_vBNTRMXUN_4 > @I_vBNTRMXUN_5 ) begin  select @O_iErrorState = 4227     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_3 <> 0 ) and ( @I_vBNTRMXUN_1 > @I_vBNTRMXUN_3 ) begin  select @O_iErrorState = 1707     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_4 <> 0 ) and ( @I_vBNTRMXUN_1 > @I_vBNTRMXUN_4 ) begin  select @O_iErrorState = 1708     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_5 <> 0 ) and ( @I_vBNTRMXUN_1 > @I_vBNTRMXUN_5 ) begin  select @O_iErrorState = 1709     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_4 <> 0 ) and ( @I_vBNTRMXUN_2 > @I_vBNTRMXUN_4 ) begin  select @O_iErrorState = 1710     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_5 <> 0 ) and ( @I_vBNTRMXUN_2 > @I_vBNTRMXUN_5 ) begin  select @O_iErrorState = 1711     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if ( @I_vBNFFRMLA = 1 ) and ( @I_vBNTRMXUN_5 <> 0 ) and ( @I_vBNTRMXUN_3 > @I_vBNTRMXUN_5 ) begin  select @O_iErrorState = 1712     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output end  if @O_iErrorState <> 0  return (@O_iErrorState)  exec @iStatus = DYNAMICS..tasmGetNextNoteIndex  @I_sCompanyID   = @sCompanyID,  @I_iSQLSessionID = 0,  @I_noteincrement  = 1,  @O_mNoteIndex   = @nNextNoteIndex output,  @O_iErrorState  = @iGetNextNoteIdxErrState output select @iError = @@error if ((@iStatus <> 0) or (@iGetNextNoteIdxErrState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + ltrim(rtrim(@iGetNextNoteIdxErrState))  select @O_iErrorState = 4228   exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if not exists( select 1 from UPR40800 (nolock) where BENEFIT = @I_vBENEFIT ) begin  insert UPR40800(  BENEFIT,  DSCRIPTN,  INACTIVE,  BNFBEGDT,  BNFENDDT,  VARBENFT,  BNFTFREQ,  TAXABLE,  SBJTFDTX,  SBJTSSEC,  SBJTMCAR,  SBJTSTTX,  SBJTLTAX,  SBJTFUTA,  SBJTSUTA,  FFEDTXRT,  FLSTTXRT,  BORCDTYP,  BSDORCDS,  BNFTMTHD,  BNFFRMLA,  BNFPRCNT_1,  BNFPRCNT_2,  BNFPRCNT_3,  BNFPRCNT_4,  BNFPRCNT_5,  BNFITAMT_1,  BNFITAMT_2,  BNFITAMT_3,  BNFITAMT_4,  BNFITAMT_5,  BNFTRMAX_1,  BNFTRMAX_2,  BNFTRMAX_3,  BNFTRMAX_4,  BNFTRMAX_5,  BNTRMXUN_1,  BNTRMXUN_2,  BNTRMXUN_3,  BNTRMXUN_4,  BNTRMXUN_5,  BNPAYPMX,  BNFYRMAX,  BNFLFMAX,  W2BXNMBR,  W2BXLABL,  NOTEINDX,  DATAENTDFLT,  EMPLRMAXMAT,     W2BXNMBR2,  W2BXLABL2,   W2BXNMBR3,   W2BXLABL3,   W2BXNMBR4,  W2BXLABL4,  Benefit_Fiscal_Max  )  select  @I_vBENEFIT,     @I_vDSCRIPTN,     @I_vINACTIVE,     @I_vBNFBEGDT,     @I_vBNFENDDT,     @I_vVARBENFT,     @I_vBNFTFREQ,     @TAXABLE,      @I_vSBJTFDTX,     @I_vSBJTSSEC,     @I_vSBJTMCAR,     @I_vSBJTSTTX,     @I_vSBJTLTAX,     @I_vSBJTFUTA,     @I_vSBJTSUTA,     @I_vFFEDTXRT * 100,    @I_vFLSTTXRT * 100,    @I_vBORCDTYP,     @I_vBSDORCDS,     @I_vBNFTMTHD,     @I_vBNFFRMLA,     @I_vBNFPRCNT_1,     @I_vBNFPRCNT_2,     @I_vBNFPRCNT_3,     @I_vBNFPRCNT_4,     @I_vBNFPRCNT_5,     @I_vBNFITAMT_1,     @I_vBNFITAMT_2,     @I_vBNFITAMT_3,     @I_vBNFITAMT_4,     @I_vBNFITAMT_5,     @I_vBNFTRMAX_1,     @I_vBNFTRMAX_2,     @I_vBNFTRMAX_3,     @I_vBNFTRMAX_4,     @I_vBNFTRMAX_5,     @I_vBNTRMXUN_1 * 100,    @I_vBNTRMXUN_2 * 100,    @I_vBNTRMXUN_3 * 100,    @I_vBNTRMXUN_4 * 100,    @I_vBNTRMXUN_5 * 100,    @I_vBNPAYPMX,     @I_vBNFYRMAX,     @I_vBNFLFMAX,     @I_vW2BXNMBR,     @I_vW2BXLABL,     @nNextNoteIndex,       @I_vDATAENTDFLT,    @I_vEMPLRMAXMAT,     @I_vW2BXNMBR2,     @I_vW2BXLABL2,      @I_vW2BXNMBR3,      @I_vW2BXLABL3,      @I_vW2BXNMBR4,     @I_vW2BXLABL4,     @I_vBenefit_Fiscal_Max   if @@error <> 0  begin  select @O_iErrorState = 3633     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end else if ( @I_vUpdateIfExists = 1 ) begin  update UPR40800   set DSCRIPTN =   case  WHEN @I_vDSCRIPTN = ''  THEN DSCRIPTN  ELSE @I_vDSCRIPTN  end,  INACTIVE = @I_vINACTIVE ,  BNFBEGDT =  case  WHEN @I_vBNFBEGDT = ''  THEN BNFBEGDT  ELSE @I_vBNFBEGDT  end,  BNFENDDT =  case  WHEN @I_vBNFENDDT = ''  THEN BNFENDDT  ELSE @I_vBNFENDDT  end,  VARBENFT = @I_vVARBENFT ,  BNFTFREQ = @I_vBNFTFREQ ,  SBJTFDTX = @I_vSBJTFDTX ,  SBJTSSEC = @I_vSBJTSSEC ,  SBJTMCAR = @I_vSBJTMCAR ,  SBJTSTTX = @I_vSBJTSTTX ,  SBJTLTAX = @I_vSBJTLTAX ,  SBJTFUTA = @I_vSBJTFUTA ,  SBJTSUTA = @I_vSBJTSUTA ,  FFEDTXRT =  case  WHEN @I_vSBJTFDTX = 0  THEN 0   ELSE @I_vFFEDTXRT * 100  end,  FLSTTXRT =  case  WHEN SBJTSTTX = 0  THEN 0  ELSE @I_vFLSTTXRT * 100  end,  BORCDTYP = @I_vBORCDTYP ,  BSDORCDS = @I_vBSDORCDS ,  BNFTMTHD = @I_vBNFTMTHD ,  BNFFRMLA = @I_vBNFFRMLA ,  BNFPRCNT_1 =  case  WHEN @I_vBNFTMTHD = 4 or @I_vBNFTMTHD = 5  THEN 0  ELSE @I_vBNFPRCNT_1  end,  BNFPRCNT_2 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFPRCNT_2  end,  BNFPRCNT_3 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFPRCNT_3  end,  BNFPRCNT_4 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFPRCNT_4  end,  BNFPRCNT_5 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFPRCNT_5  end,  BNFITAMT_1 =  case  WHEN @I_vBNFTMTHD = 1 or @I_vBNFTMTHD = 2 or @I_vBNFTMTHD = 3  THEN 0  ELSE @I_vBNFITAMT_1  end,  BNFITAMT_2 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFITAMT_2  end,  BNFITAMT_3 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFITAMT_3  end,  BNFITAMT_4 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFITAMT_4  end,  BNFITAMT_5 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFITAMT_5  end,  BNFTRMAX_1 =  case  WHEN @I_vBNFTMTHD = 5  THEN 0   ELSE @I_vBNFTRMAX_1  end,   BNFTRMAX_2 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFTRMAX_2  end,  BNFTRMAX_3 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFTRMAX_3  end,  BNFTRMAX_4 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFTRMAX_4  end,  BNFTRMAX_5 =  case  WHEN @I_vBNFFRMLA = 0  THEN 0  ELSE @I_vBNFTRMAX_5  end,  BNTRMXUN_1 =  case  WHEN @I_vBNFTMTHD <> 5  THEN 0  ELSE @I_vBNTRMXUN_1 * 100  end,  BNTRMXUN_2 =  case  WHEN @I_vBNFTMTHD <> 5  THEN 0  ELSE @I_vBNTRMXUN_2 * 100  end,  BNTRMXUN_3 =  case  WHEN @I_vBNFTMTHD <> 5  THEN 0  ELSE @I_vBNTRMXUN_3 * 100  end,  BNTRMXUN_4 =  case  WHEN @I_vBNFTMTHD <> 5  THEN 0  ELSE @I_vBNTRMXUN_4 * 100  end,  BNTRMXUN_5 =  case  WHEN @I_vBNFTMTHD <> 5  THEN 0  ELSE @I_vBNTRMXUN_5 * 100  end,  BNPAYPMX = @I_vBNPAYPMX ,  BNFYRMAX = @I_vBNFYRMAX ,  BNFLFMAX = @I_vBNFLFMAX,  W2BXNMBR = @I_vW2BXNMBR ,  W2BXLABL = @I_vW2BXLABL ,  W2BXNMBR2 = @I_vW2BXNMBR2,   W2BXLABL2 = @I_vW2BXLABL2,  W2BXNMBR3 = @I_vW2BXNMBR3,  W2BXLABL3 = @I_vW2BXLABL3,  W2BXNMBR4 = @I_vW2BXNMBR4,  W2BXLABL4 = @I_vW2BXLABL4,  DATAENTDFLT = @I_vDATAENTDFLT,  EMPLRMAXMAT = @I_vEMPLRMAXMAT,     Benefit_Fiscal_Max = @I_vBenefit_Fiscal_Max  from UPR40800 where BENEFIT = @I_vBENEFIT  if @@error <> 0  begin  select @O_iErrorState = 3634     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @iAddCodeErrState output  return (@O_iErrorState)  end end  exec @iStatus = taCreateBenefitPost  @I_vBENEFIT,  @I_vDSCRIPTN,  @I_vINACTIVE,  @I_vBNFBEGDT,  @I_vBNFENDDT,  @I_vVARBENFT,  @I_vBNFTFREQ,  @I_vSBJTFDTX,  @I_vSBJTSSEC,  @I_vSBJTMCAR,  @I_vSBJTSTTX,  @I_vSBJTLTAX,  @I_vSBJTFUTA,  @I_vSBJTSUTA,  @I_vFFEDTXRT,  @I_vFLSTTXRT,  @I_vBORCDTYP,  @I_vBSDORCDS,  @I_vBNFTMTHD,  @I_vBNFFRMLA,  @I_vBNFPRCNT_1,  @I_vBNFPRCNT_2,  @I_vBNFPRCNT_3,  @I_vBNFPRCNT_4,  @I_vBNFPRCNT_5,  @I_vBNFITAMT_1,  @I_vBNFITAMT_2,  @I_vBNFITAMT_3,  @I_vBNFITAMT_4,  @I_vBNFITAMT_5,  @I_vBNFTRMAX_1,  @I_vBNFTRMAX_2,  @I_vBNFTRMAX_3,  @I_vBNFTRMAX_4,  @I_vBNFTRMAX_5,  @I_vBNTRMXUN_1,  @I_vBNTRMXUN_2,  @I_vBNTRMXUN_3,  @I_vBNTRMXUN_4,  @I_vBNTRMXUN_5,  @I_vBNPAYPMX,  @I_vBNFYRMAX,  @I_vBenefit_Fiscal_Max,        @I_vBNFLFMAX,  @I_vW2BXNMBR,  @I_vW2BXLABL,  @I_vW2BXNMBR2,  @I_vW2BXLABL2,  @I_vW2BXNMBR3,  @I_vW2BXLABL3,  @I_vW2BXNMBR4,  @I_vW2BXLABL4,  @I_vDATAENTDFLT,  @I_vEMPLRMAXMAT,  @I_vUpdateIfExists,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState = @iCustomState output,  @oErrString = @oErrString output select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end if (@iStatus <> 0) or (@iCustomState <> 0) begin  select @O_iErrorState = 3635     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taCreateBenefit] TO [DYNGRP]
GO
