SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Contract_Site]  @CONSTS smallint,  @CONTNBR char(11),  @site char(15) as declare @Seq numeric(19,5) declare @Customer char(15) declare @Tax char(15) declare @Contact char(31) declare @NEWNOTEINDEX numeric(19,5),@UserID char(21)  if not exists(select * from SVC00608   where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE=@site )  BEGIN  exec SVC_Get_Next_Note_Index @NEWNOTEINDEX output  select @Seq = max(LNSEQNBR) + 100  from SVC00608  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR  select @Seq = isnull(@Seq,100)  insert SVC00608  select   @CONSTS,  @CONTNBR,  @Seq,  Contract_Transfer_Status,  Contract_Transfer_Date,  TAXSCHID,  priorityLevel,  @site,  @NEWNOTEINDEX,  TIMEZONE,  CONTPRC,  RENCNTTYP,  RENPRCSCHD,  PCTCRYFWD,  FRZEND,  FRXSTRT,  MXINCPCT,  BLKTIM,  VALTIM,  DSCPCTAM,  COMDLRAM,  COUNTRY,  PRCSTAT,  PORDNMBR,  DSCRIPTN,  PARTPCT,  LABPCT,  MISCPCT,  PMMSCPCT,  PMPRTPCT,  PMLABPCT,  VENDORID,  RETNAGAM,  RTNBILLD,  SLPRSNID,  COMMCODE,  COMPRCNT,  BILSTRT,  BILEND,  BILLNGTH,  BILPRD,  TOTAL,  FRSTBLDTE,  Last_Amount_Billed,  LSTBLDTE,  NBRCAL,  ACTCAL,  TOTVALCAL,  CONTACT,  CURNCYID,  NXTBLDTE,  CNTTYPE,  PRICSHED,  CUSTNMBR,  ENTDTE,  MINBIL,  MAXBIL,  MAXBILL,  AUTOREN,  MSTCNTRCT,  SRVTYPE,  BILFRRET,  TOTBIL,  PREPAID,  BILONDY,  BILCYC,  UOFM,  BILSTAT,  ENTTME,  STRTDATE,  ENDDATE,  CNTCOVPD_1,  CNTCOVPD_2,  CNTCOVPD_3,  CNTCOVPD_4,  CNTCOVPD_5,  CNTCOVPD_6,  CNTCOVPD_7,  Contract_Coverage_Period_1,  Contract_Coverage_Period_2,  Contract_Coverage_Period_3,  Contract_Coverage_Period_4,  Contract_Coverage_Period_5,  Contract_Coverage_Period_6,  Contract_Coverage_Period_7,  USECVPD_1,  USECVPD_2,  USECVPD_3,  USECVPD_4,  USECVPD_5,  USECVPD_6,  USECVPD_7,  Contract_Length,  Contract_Period,  Invoiced_Amount,  Liabiltiy_Reduction,  Amount_To_Invoice,  Liability_Amount,  Total_Liability_Amount,  NUMOFINV,  Quote_Status,  QUOEXPDA,  Credit_Hold,  TAXEXMT1,  TAXEXMT2,  New_PO_Required,  Contract_Renewal_Contact,  Source_Contract_Number,  Source_Contract_Type,  Contract_Response_Time,  Liability_Months,  Next_Liability_Date,  Last_Liability_Date,  Total_Liability_Billed,  Total_Unit,  Created_User_ID,  Source_User_ID,  SVC_Contract_Signed,  SVC_Liability_Type,  RETTYPE,  Location_Segment,  Bill_To_Customer,  0,0,  CURRNIDX ,  RATETPID ,  EXGTBLID ,  XCHGRATE ,  EXCHDATE ,  DECPLACS,  TIME1 ,  RATECALC ,  VIEWMODE ,  ISMCTRX ,  EXPNDATE ,  DENXRATE ,  MCTRXSTT ,  0,  0, 0,  0,  0,  0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  SVC_Bill_To_Address_Code   ,  1  from SVC00600  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR  select @Customer = CUSTNMBR  from SVC00600  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR  select @Tax=TAXSCHID, @Contact=CNTCPRSN  from RM00102  where CUSTNMBR = @Customer and ADRSCODE = @site  select @Tax = isnull(@Tax,'')  select @Contact = isnull(@Contact,'')  if @Tax <> ''   BEGIN  update SVC00608 set TAXSCHID = @Tax  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE = @site     END  if @Contact <> ''   BEGIN  update SVC00608 set CONTACT = @Contact  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE = @site     END  exec SVC_Copy_Options_to_Site @CONSTS,@CONTNBR,@Seq  select @UserID = SYSTEM_USER  exec SVC_Create_Contract_Audit @CONSTS, @CONTNBR,@Seq,'','',@site,@UserID,'Create Contract Site Record '  END  ELSE  BEGIN  return -1  END  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Contract_Site] TO [DYNGRP]
GO
