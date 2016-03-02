CREATE TABLE [dbo].[SVC00601]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[Contract_Transfer_Status] [smallint] NOT NULL,
[Contract_Transfer_Date] [datetime] NOT NULL,
[CNTPRCOVR] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONFGREF] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQUIPID] [int] NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRZEND] [datetime] NOT NULL,
[FRXSTRT] [datetime] NOT NULL,
[BLKTIM] [numeric] (19, 5) NOT NULL,
[VALTIM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSTAT] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[PMMSCPCT] [numeric] (19, 5) NOT NULL,
[PMPRTPCT] [numeric] (19, 5) NOT NULL,
[PMLABPCT] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[RTNBILLD] [numeric] (19, 5) NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[BILSTRT] [datetime] NOT NULL,
[BILEND] [datetime] NOT NULL,
[BILLNGTH] [smallint] NOT NULL,
[BILPRD] [smallint] NOT NULL,
[FRSTBLDTE] [datetime] NOT NULL,
[Last_Amount_Billed] [numeric] (19, 5) NOT NULL,
[LSTBLDTE] [datetime] NOT NULL,
[NBRCAL] [smallint] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[ACTCAL] [smallint] NOT NULL,
[TOTVALCAL] [numeric] (19, 5) NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTBLDTE] [datetime] NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[MINBIL] [numeric] (19, 5) NOT NULL,
[MAXBIL] [numeric] (19, 5) NOT NULL,
[MAXBILL] [numeric] (19, 5) NOT NULL,
[AUTOREN] [tinyint] NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[MSTCNTRCT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILFRRET] [tinyint] NOT NULL,
[TOTBIL] [numeric] (19, 5) NOT NULL,
[PREPAID] [tinyint] NOT NULL,
[BILONDY] [smallint] NOT NULL,
[BILCYC] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILSTAT] [smallint] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[CNTCOVPD_1] [datetime] NOT NULL,
[CNTCOVPD_2] [datetime] NOT NULL,
[CNTCOVPD_3] [datetime] NOT NULL,
[CNTCOVPD_4] [datetime] NOT NULL,
[CNTCOVPD_5] [datetime] NOT NULL,
[CNTCOVPD_6] [datetime] NOT NULL,
[CNTCOVPD_7] [datetime] NOT NULL,
[Contract_Coverage_Period_1] [datetime] NOT NULL,
[Contract_Coverage_Period_2] [datetime] NOT NULL,
[Contract_Coverage_Period_3] [datetime] NOT NULL,
[Contract_Coverage_Period_4] [datetime] NOT NULL,
[Contract_Coverage_Period_5] [datetime] NOT NULL,
[Contract_Coverage_Period_6] [datetime] NOT NULL,
[Contract_Coverage_Period_7] [datetime] NOT NULL,
[USECVPD_1] [tinyint] NOT NULL,
[USECVPD_2] [tinyint] NOT NULL,
[USECVPD_3] [tinyint] NOT NULL,
[USECVPD_4] [tinyint] NOT NULL,
[USECVPD_5] [tinyint] NOT NULL,
[USECVPD_6] [tinyint] NOT NULL,
[USECVPD_7] [tinyint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNFGLVL] [smallint] NOT NULL,
[CNFGSEQ] [smallint] NOT NULL,
[Contract_Length] [smallint] NOT NULL,
[Contract_Period] [smallint] NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Liabiltiy_Reduction] [tinyint] NOT NULL,
[Liability_Amount] [numeric] (19, 5) NOT NULL,
[Total_Liability_Amount] [numeric] (19, 5) NOT NULL,
[NUMOFINV] [int] NOT NULL,
[New_Invoice_Amount] [numeric] (19, 5) NOT NULL,
[Contract_Line_Status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Contract_Renewal_Contact] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Contract_Response_Time] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Liability_Months] [smallint] NOT NULL,
[Next_Liability_Date] [datetime] NOT NULL,
[Last_Liability_Date] [datetime] NOT NULL,
[Total_Liability_Billed] [numeric] (19, 5) NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Total_Unit] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[Unit_Cost_Total] [numeric] (19, 5) NOT NULL,
[SVC_Liability_Type] [smallint] NOT NULL,
[SVC_Contract_Signed] [datetime] NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Monthly_Price] [numeric] (19, 5) NOT NULL,
[Location_Segment] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[SVC_Invoiced_Discount] [numeric] (19, 5) NOT NULL,
[SVC_Discount_Recognized] [numeric] (19, 5) NOT NULL,
[SVC_Discount_Remaining] [numeric] (19, 5) NOT NULL,
[SVC_Discount_Next] [numeric] (19, 5) NOT NULL,
[SVC_PM_Date] [smallint] NOT NULL,
[SVC_PM_Day] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[VIEWMODE] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[ORIGVALTIM] [numeric] (19, 5) NOT NULL,
[ORCOMAMT] [numeric] (19, 5) NOT NULL,
[ORIGRETNAGAM] [numeric] (19, 5) NOT NULL,
[ORIGRTNBILLD] [numeric] (19, 5) NOT NULL,
[ORIGLASTAmountBilled] [numeric] (19, 5) NOT NULL,
[ORIGTOTAL] [numeric] (19, 5) NOT NULL,
[ORIGTOTVALCAL] [numeric] (19, 5) NOT NULL,
[ORIGMINBIL] [numeric] (19, 5) NOT NULL,
[ORIGMAXBIL] [numeric] (19, 5) NOT NULL,
[Originating_Max_Billable] [numeric] (19, 5) NOT NULL,
[ORIGTOTBIL] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Orig_Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Orig_Liability_Amount] [numeric] (19, 5) NOT NULL,
[OrigTotLiabilityAmount] [numeric] (19, 5) NOT NULL,
[OrigTotLiabBilled] [numeric] (19, 5) NOT NULL,
[Originating_Total_Unit] [numeric] (19, 5) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[OrigDiscountReceived] [numeric] (19, 5) NOT NULL,
[OrigDiscountRemaining] [numeric] (19, 5) NOT NULL,
[OrigDiscountNext] [numeric] (19, 5) NOT NULL,
[ORIGUNITCOSTTOTAL] [numeric] (19, 5) NOT NULL,
[ORIGMONTHPRICE] [numeric] (19, 5) NOT NULL,
[ORIGINVOICEDDISC] [numeric] (19, 5) NOT NULL,
[OrigNewInvoiceAmount] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MovedRevenue] [numeric] (19, 5) NOT NULL,
[OriginalTotal] [numeric] (19, 5) NOT NULL,
[OrigMovedRevenue] [numeric] (19, 5) NOT NULL,
[OrigOriginalTotal] [numeric] (19, 5) NOT NULL,
[Credit_Hold] [tinyint] NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create TRIGGER [dbo].[tr_SVC_SVC00601_IUD] ON [dbo].[SVC00601]  FOR INSERT,UPDATE,DELETE  AS declare @CONSTS smallint  declare @CONTNBR char(11) declare @LNSEQNBR numeric(19,5) declare @Old_BLOCKTIME numeric(19,2) declare @Old_TIMEVALUE numeric(19,2) declare @Old_ACTUALCALLS numeric(19,2) declare @Old_VALUECALLS numeric(19,2) declare @Old_MAXCALLS numeric(19,2) declare @Old_CTOTAL numeric(19,2) declare @Old_CTOTALUNIT numeric(19,2) declare @Old_CINVAMT numeric(19,2) declare @Old_CAMTTOINVOICE numeric(19,2) declare @Old_CDiscount numeric(19,2) declare @New_BLOCKTIME numeric(19,2) declare @New_TIMEVALUE numeric(19,2) declare @New_ACTUALCALLS numeric(19,2) declare @New_VALUECALLS numeric(19,2) declare @New_MAXCALLS numeric(19,2) declare @New_CTOTAL numeric(19,2) declare @New_CTOTALUNIT numeric(19,2) declare @New_CINVAMT numeric(19,2) declare @New_CAMTTOINVOICE numeric(19,2) declare @New_CDiscount numeric(19,2) declare @SVC_Liability_Type smallint,  @OldLiabilityType smallint,  @BILCYC integer,  @STRTDATE datetime,   @ENDDATE datetime,  @TOTAL numeric(19,5),  @TransactionDate datetime,  @DSCDLRAM numeric(19,5),  @SourceDocument varchar(255),  @ErrorCondition integer,  @DiscountPercent numeric(19,5) declare @Old_ORIGTIMEVALUE numeric(19,2),  @Old_ORIGVALUECALLS numeric(19,2),  @Old_ORIGCTOTAL numeric(19,2),  @Old_ORIGCTOTALUNIT numeric(19,2),  @Old_ORIGCINVAMT numeric(19,2),  @Old_ORIGCAMTTOINVOICE numeric(19,2),  @Old_ORIGCDiscount numeric(19,2),   @Contract_Line_Status char(1),  @BillStatus smallint,  @Customer char(15),  @Address char(15) declare @Evergreen tinyint  declare @CTOTAL numeric(19,2) declare @ItemNumber char(31),@SerialNumber char(21),@UserID char(30)  IF ( (SELECT trigger_nestlevel( object_ID('tr_SVC_SVC00601_IUD') ) ) > 2 )  return  select @TransactionDate = convert(char(12),getdate(),102) select @UserID = SYSTEM_USER, @Evergreen = 0  if not exists(select * from deleted)    BEGIN  declare Cont_Line_Insert_Cursor cursor for select CONSTS, CONTNBR, LNSEQNBR,SVC_Liability_Type,STRTDATE, ENDDATE,TOTAL,DSCDLRAM,Contract_Line_Status from inserted  open Cont_Line_Insert_Cursor   fetch next from Cont_Line_Insert_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR,@SVC_Liability_Type,@STRTDATE, @ENDDATE,@TOTAL,@DSCDLRAM, @Contract_Line_Status  while (@@FETCH_STATUS = 0 and @Contract_Line_Status <> 'I')  BEGIN  select     @Old_BLOCKTIME = 0,  @Old_TIMEVALUE = 0,  @Old_ACTUALCALLS = 0,  @Old_VALUECALLS = 0,   @Old_MAXCALLS = 0,  @Old_CTOTAL = 0,  @Old_CTOTALUNIT = 0,  @Old_CDiscount = 0,  @Old_CINVAMT = 0,  @Old_ORIGTIMEVALUE = 0,  @Old_ORIGVALUECALLS = 0 ,  @Old_ORIGCTOTAL = 0,  @Old_ORIGCTOTALUNIT = 0,  @Old_ORIGCINVAMT = 0 ,  @Old_ORIGCAMTTOINVOICE = 0,  @Old_ORIGCDiscount = 0,   @Customer = '',  @Address = '',  @Old_ORIGCAMTTOINVOICE = 0,  @SourceDocument = '2-' + RTRIM(@CONTNBR) + '-' + CONVERT(varchar(20),@LNSEQNBR)  if (select SVC_Evergreen_Contract from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR) =  1   begin  select @Evergreen = 1  exec SVC_EVGR_Update_Contract_Line @CONSTS, @CONTNBR, @LNSEQNBR,1  end  else  begin  exec SVC_Update_Contract_Line 0,  @CONSTS,  @CONTNBR,  @LNSEQNBR ,  @Old_BLOCKTIME,  @Old_TIMEVALUE,  @Old_ACTUALCALLS ,  @Old_VALUECALLS,  @Old_MAXCALLS ,  @Old_CTOTAL ,  @Old_CTOTALUNIT,  @Old_CINVAMT ,  @Old_CAMTTOINVOICE,  @Old_CDiscount,  @Old_ORIGTIMEVALUE,  @Old_ORIGVALUECALLS,  @Old_ORIGCTOTAL ,  @Old_ORIGCTOTALUNIT,  @Old_ORIGCINVAMT ,  @Old_ORIGCAMTTOINVOICE,  @Old_ORIGCDiscount,   @Customer,  @Address  end  if @SVC_Liability_Type = 1 and @Evergreen = 0    BEGIN   select @TOTAL = TOTAL,  @DiscountPercent = case when TOTAL > 0 then DSCDLRAM / TOTAL else 0 end ,  @BILCYC = BILCYC   from  SVC00601 WITH (NOLOCK)  where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR  if @CONSTS > 1 and (@BILCYC =4 or   (@BILCYC =3 and exists(select 1 from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR and (svcFrequencyQty > 1 or Liabiltiy_Reduction = 1))))  BEGIN  exec SVC_RET_Create_Revenue_Recognition_Lines  -1,   -1,  @CONSTS,  @CONTNBR,  @LNSEQNBR ,  0 ,  '01/01/1900 00:00:00',  'CAL',  @SourceDocument ,  @TransactionDate,  @TOTAL,  @UserID ,  @STRTDATE,  @ENDDATE,  @DiscountPercent,  @ErrorCondition OUTPUT  END  END  fetch next from Cont_Line_Insert_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR,@SVC_Liability_Type,@STRTDATE, @ENDDATE,@TOTAL,@DSCDLRAM, @Contract_Line_Status  END  close Cont_Line_Insert_Cursor   deallocate Cont_Line_Insert_Cursor   END else if exists(select * from inserted)    BEGIN  declare Cont_Line_Update_Cursor cursor for select CONSTS, CONTNBR, LNSEQNBR,TOTAL,Contract_Line_Status,BILSTAT,SVC_Liability_Type,STRTDATE, ENDDATE,TOTAL,DSCDLRAM  BILSTAT from inserted  open Cont_Line_Update_Cursor   fetch next from Cont_Line_Update_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR,@CTOTAL,@Contract_Line_Status,@BillStatus,@SVC_Liability_Type,@STRTDATE, @ENDDATE,@TOTAL,@DSCDLRAM  while (@@FETCH_STATUS = 0)  BEGIN  IF UPDATE(TOTAL) or UPDATE(CURNCYID) OR  UPDATE(PREPAID) or UPDATE(BILONDY) or  UPDATE(BILCYC) or UPDATE(STRTDATE) OR  UPDATE(QUANTITY) OR UPDATE(CNTPRCOVR) OR  UPDATE(ENDDATE) or UPDATE(Contract_Length) or  UPDATE(BILSTRT) or UPDATE(BILEND) or  UPDATE(Contract_Period) or UPDATE(SVC_Liability_Type) or  UPDATE(SVC_Monthly_Price) or UPDATE(DSCDLRAM) or  UPDATE(CURRNIDX) or UPDATE(Liability_Months) or  UPDATE(PRICSHED) or UPDATE(Liabiltiy_Reduction)  BEGIN    IF @Contract_Line_Status <> 'C' and @Contract_Line_Status <> 'P' and @Contract_Line_Status <> 'M' and @BillStatus = 0  BEGIN  select @Old_BLOCKTIME = BLKTIM,  @Old_TIMEVALUE = VALTIM,  @Old_ACTUALCALLS = ACTCAL,  @Old_VALUECALLS = TOTVALCAL,   @Old_MAXCALLS = NBRCAL,  @Old_CTOTAL = TOTAL,  @Old_CTOTALUNIT = Unit_Cost_Total,  @Customer = CUSTNMBR,  @Address = ADRSCODE,  @Old_CDiscount = DSCDLRAM,  @Old_CINVAMT = Invoiced_Amount,  @Old_ORIGTIMEVALUE = ORIGVALTIM,  @Old_ORIGVALUECALLS = ORIGTOTVALCAL,  @Old_ORIGCTOTAL = ORIGTOTAL,  @Old_ORIGCTOTALUNIT = ORIGUNITCOSTTOTAL,  @Old_ORIGCDiscount = ORDDLRAT,  @Old_ORIGCINVAMT = Orig_Invoiced_Amount,  @SourceDocument = '2-' + RTRIM(@CONTNBR) + '-' + CONVERT(varchar(20),@LNSEQNBR)  from deleted  where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR  exec SVC_Get_ContractLineAmount @CONSTS, @CONTNBR, @LNSEQNBR,  @Old_CAMTTOINVOICE OUTPUT,  @Old_ORIGCAMTTOINVOICE OUTPUT  if (select SVC_Evergreen_Contract from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR) =  1   begin  select @Evergreen = 1  exec SVC_EVGR_Update_Contract_Line @CONSTS, @CONTNBR, @LNSEQNBR,2  end  else  begin  exec SVC_Update_Contract_Line 0,  @CONSTS,  @CONTNBR,  @LNSEQNBR ,  @Old_BLOCKTIME,      @Old_TIMEVALUE,  @Old_ACTUALCALLS ,  @Old_VALUECALLS,  @Old_MAXCALLS ,  @Old_CTOTAL ,  @Old_CTOTALUNIT,  @Old_CINVAMT ,  @Old_CAMTTOINVOICE,  @Old_CDiscount,  @Old_ORIGTIMEVALUE,  @Old_ORIGVALUECALLS,  @Old_ORIGCTOTAL ,  @Old_ORIGCTOTALUNIT,  @Old_ORIGCINVAMT ,  @Old_ORIGCAMTTOINVOICE,  @Old_ORIGCDiscount,   @Customer,  @Address  end   select @OldLiabilityType = SVC_Liability_Type from deleted   where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR   IF @SVC_Liability_Type = 1   Begin   if @Evergreen = 0  BEGIN   select @TOTAL = TOTAL,  @DiscountPercent = case when TOTAL > 0 then DSCDLRAM / TOTAL else 0 end ,  @BILCYC = BILCYC  from  SVC00601 WITH (NOLOCK)  where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR  IF @CONSTS > 1 AND @TOTAL > 0 and (@BILCYC > 3 or (@BILCYC = 3 and   exists(select 1 from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR and (svcFrequencyQty > 1 or Liabiltiy_Reduction = 1))))  BEGIN   exec SVC_RET_Create_Revenue_Recognition_Lines  -1,   -1,  @CONSTS,  @CONTNBR,  @LNSEQNBR ,  0 ,  '01/01/1900 00:00:00',  'CAL',  @SourceDocument ,  @TransactionDate,  @TOTAL,  @UserID ,  @STRTDATE,  @ENDDATE,  @DiscountPercent,  @ErrorCondition OUTPUT  END   ELSE  Begin  exec SVC_RET_DeleteRevenueLines @CONSTS,@CONTNBR,@LNSEQNBR   End  END   End   ELSE  Begin  exec SVC_RET_DeleteRevenueLines @CONSTS,@CONTNBR,@LNSEQNBR   End   END    END  fetch next from Cont_Line_Update_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR,@CTOTAL,@Contract_Line_Status,@BillStatus,@SVC_Liability_Type,@STRTDATE, @ENDDATE,@TOTAL,@DSCDLRAM  END  close Cont_Line_Update_Cursor   deallocate Cont_Line_Update_Cursor   END else   BEGIN   select @CONSTS = CONSTS, @CONTNBR = CONTNBR from deleted    if exists(select * from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR )  BEGIN  declare Cont_Line_Delete_Cursor cursor for select CONSTS, CONTNBR, LNSEQNBR from deleted  open Cont_Line_Delete_Cursor   fetch next from Cont_Line_Delete_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR  while (@@FETCH_STATUS = 0)  BEGIN  select @Old_BLOCKTIME = BLKTIM,  @Old_TIMEVALUE = VALTIM,  @Old_ACTUALCALLS = ACTCAL,  @Old_VALUECALLS = TOTVALCAL,   @Old_MAXCALLS = NBRCAL,  @Old_CTOTAL = TOTAL,  @Old_CTOTALUNIT = Unit_Cost_Total,  @Customer = CUSTNMBR,  @Address = ADRSCODE,  @ItemNumber = ITEMNMBR,  @SerialNumber = SERLNMBR,  @Old_CDiscount = DSCDLRAM,  @Old_CINVAMT = Invoiced_Amount,  @Old_ORIGTIMEVALUE = ORIGVALTIM,  @Old_ORIGVALUECALLS = ORIGTOTVALCAL,  @Old_ORIGCTOTAL = ORIGTOTAL,  @Old_ORIGCTOTALUNIT = ORIGUNITCOSTTOTAL,  @Old_ORIGCDiscount = ORDDLRAT,  @Old_ORIGCINVAMT = Orig_Invoiced_Amount   from deleted  where @CONSTS=CONSTS and @CONTNBR=CONTNBR and @LNSEQNBR=LNSEQNBR  exec SVC_Get_ContractLineAmount @CONSTS, @CONTNBR, @LNSEQNBR,  @Old_CAMTTOINVOICE OUTPUT,  @Old_ORIGCAMTTOINVOICE OUTPUT  if (select SVC_Evergreen_Contract from SVC00600 where CONSTS=@CONSTS and CONTNBR = @CONTNBR) =  1   begin  select @Evergreen = 1  exec SVC_EVGR_Update_Contract_Line @CONSTS, @CONTNBR, @LNSEQNBR,3  end  else  begin  exec SVC_Update_Contract_Line 1,  @CONSTS,  @CONTNBR,  @LNSEQNBR ,  @Old_BLOCKTIME,  @Old_TIMEVALUE,  @Old_ACTUALCALLS ,  @Old_VALUECALLS,  @Old_MAXCALLS ,  @Old_CTOTAL ,  @Old_CTOTALUNIT,  @Old_CINVAMT ,  @Old_CAMTTOINVOICE,  @Old_CDiscount,  @Old_ORIGTIMEVALUE,  @Old_ORIGVALUECALLS,  @Old_ORIGCTOTAL ,  @Old_ORIGCTOTALUNIT,  @Old_ORIGCINVAMT ,  @Old_ORIGCAMTTOINVOICE,  @Old_ORIGCDiscount,   @Customer,  @Address   end   exec SVC_RET_DeleteRevenueLines @CONSTS,@CONTNBR,@LNSEQNBR   fetch next from Cont_Line_Delete_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR  END  close Cont_Line_Delete_Cursor   deallocate Cont_Line_Delete_Cursor   END  else  BEGIN  declare Cont_Line_Delete_Cursor cursor for select CONSTS, CONTNBR, LNSEQNBR from deleted  open Cont_Line_Delete_Cursor   fetch next from Cont_Line_Delete_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR  while (@@FETCH_STATUS = 0)  BEGIN  exec SVC_RET_DeleteRevenueLines @CONSTS,@CONTNBR,@LNSEQNBR   fetch next from Cont_Line_Delete_Cursor into @CONSTS, @CONTNBR, @LNSEQNBR  END  close Cont_Line_Delete_Cursor   deallocate Cont_Line_Delete_Cursor   END  END    
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__51CFF82A] CHECK ((datepart(day,[CNTCOVPD_1])=(1) AND datepart(month,[CNTCOVPD_1])=(1) AND datepart(year,[CNTCOVPD_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__52C41C63] CHECK ((datepart(day,[CNTCOVPD_2])=(1) AND datepart(month,[CNTCOVPD_2])=(1) AND datepart(year,[CNTCOVPD_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__53B8409C] CHECK ((datepart(day,[CNTCOVPD_3])=(1) AND datepart(month,[CNTCOVPD_3])=(1) AND datepart(year,[CNTCOVPD_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__54AC64D5] CHECK ((datepart(day,[CNTCOVPD_4])=(1) AND datepart(month,[CNTCOVPD_4])=(1) AND datepart(year,[CNTCOVPD_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__55A0890E] CHECK ((datepart(day,[CNTCOVPD_5])=(1) AND datepart(month,[CNTCOVPD_5])=(1) AND datepart(year,[CNTCOVPD_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__5694AD47] CHECK ((datepart(day,[CNTCOVPD_6])=(1) AND datepart(month,[CNTCOVPD_6])=(1) AND datepart(year,[CNTCOVPD_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__CNTCOV__5788D180] CHECK ((datepart(day,[CNTCOVPD_7])=(1) AND datepart(month,[CNTCOVPD_7])=(1) AND datepart(year,[CNTCOVPD_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__597119F2] CHECK ((datepart(day,[Contract_Coverage_Period_1])=(1) AND datepart(month,[Contract_Coverage_Period_1])=(1) AND datepart(year,[Contract_Coverage_Period_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5A653E2B] CHECK ((datepart(day,[Contract_Coverage_Period_2])=(1) AND datepart(month,[Contract_Coverage_Period_2])=(1) AND datepart(year,[Contract_Coverage_Period_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5B596264] CHECK ((datepart(day,[Contract_Coverage_Period_3])=(1) AND datepart(month,[Contract_Coverage_Period_3])=(1) AND datepart(year,[Contract_Coverage_Period_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5C4D869D] CHECK ((datepart(day,[Contract_Coverage_Period_4])=(1) AND datepart(month,[Contract_Coverage_Period_4])=(1) AND datepart(year,[Contract_Coverage_Period_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5D41AAD6] CHECK ((datepart(day,[Contract_Coverage_Period_5])=(1) AND datepart(month,[Contract_Coverage_Period_5])=(1) AND datepart(year,[Contract_Coverage_Period_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5E35CF0F] CHECK ((datepart(day,[Contract_Coverage_Period_6])=(1) AND datepart(month,[Contract_Coverage_Period_6])=(1) AND datepart(year,[Contract_Coverage_Period_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__5F29F348] CHECK ((datepart(day,[Contract_Coverage_Period_7])=(1) AND datepart(month,[Contract_Coverage_Period_7])=(1) AND datepart(year,[Contract_Coverage_Period_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__ENTTME__62065FF3] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__TIME1__6D78129F] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__BILEND__4FE7AFB8] CHECK ((datepart(hour,[BILEND])=(0) AND datepart(minute,[BILEND])=(0) AND datepart(second,[BILEND])=(0) AND datepart(millisecond,[BILEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__BILSTR__50DBD3F1] CHECK ((datepart(hour,[BILSTRT])=(0) AND datepart(minute,[BILSTRT])=(0) AND datepart(second,[BILSTRT])=(0) AND datepart(millisecond,[BILSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Contra__587CF5B9] CHECK ((datepart(hour,[Contract_Transfer_Date])=(0) AND datepart(minute,[Contract_Transfer_Date])=(0) AND datepart(second,[Contract_Transfer_Date])=(0) AND datepart(millisecond,[Contract_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__ENDDAT__601E1781] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__ENTDTE__61123BBA] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__EXCHDA__62FA842C] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__EXPNDA__63EEA865] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__FRSTBL__64E2CC9E] CHECK ((datepart(hour,[FRSTBLDTE])=(0) AND datepart(minute,[FRSTBLDTE])=(0) AND datepart(second,[FRSTBLDTE])=(0) AND datepart(millisecond,[FRSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__FRXSTR__65D6F0D7] CHECK ((datepart(hour,[FRXSTRT])=(0) AND datepart(minute,[FRXSTRT])=(0) AND datepart(second,[FRXSTRT])=(0) AND datepart(millisecond,[FRXSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__FRZEND__66CB1510] CHECK ((datepart(hour,[FRZEND])=(0) AND datepart(minute,[FRZEND])=(0) AND datepart(second,[FRZEND])=(0) AND datepart(millisecond,[FRZEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Last_L__68B35D82] CHECK ((datepart(hour,[Last_Liability_Date])=(0) AND datepart(minute,[Last_Liability_Date])=(0) AND datepart(second,[Last_Liability_Date])=(0) AND datepart(millisecond,[Last_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__LSTBLD__67BF3949] CHECK ((datepart(hour,[LSTBLDTE])=(0) AND datepart(minute,[LSTBLDTE])=(0) AND datepart(second,[LSTBLDTE])=(0) AND datepart(millisecond,[LSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__Next_L__6A9BA5F4] CHECK ((datepart(hour,[Next_Liability_Date])=(0) AND datepart(minute,[Next_Liability_Date])=(0) AND datepart(second,[Next_Liability_Date])=(0) AND datepart(millisecond,[Next_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__NXTBLD__69A781BB] CHECK ((datepart(hour,[NXTBLDTE])=(0) AND datepart(minute,[NXTBLDTE])=(0) AND datepart(second,[NXTBLDTE])=(0) AND datepart(millisecond,[NXTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__STRTDA__6B8FCA2D] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [CK__SVC00601__SVC_Co__6C83EE66] CHECK ((datepart(hour,[SVC_Contract_Signed])=(0) AND datepart(minute,[SVC_Contract_Signed])=(0) AND datepart(second,[SVC_Contract_Signed])=(0) AND datepart(millisecond,[SVC_Contract_Signed])=(0)))
GO
ALTER TABLE [dbo].[SVC00601] ADD CONSTRAINT [PKSVC00601] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00601] ON [dbo].[SVC00601] ([CONSTS], [CONTNBR], [Bill_To_Customer], [SVC_Bill_To_Address_Code], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00601] ON [dbo].[SVC00601] ([CONSTS], [CONTNBR], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00601] ON [dbo].[SVC00601] ([CONSTS], [CONTNBR], [NXTBLDTE], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00601] ON [dbo].[SVC00601] ([CONSTS], [CUSTNMBR], [ITEMNMBR], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00601] ON [dbo].[SVC00601] ([CONSTS], [EQUIPID], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00601] ON [dbo].[SVC00601] ([EQUIPID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Contract_Transfer_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[CNTPRCOVR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CONFGREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[FRZEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[FRXSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[BLKTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[VALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[PRCSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[PMMSCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[PMPRTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[PMLABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[RTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[BILSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[BILEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILLNGTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[FRSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Last_Amount_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[LSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[NBRCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[ACTCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[TOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[NXTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[MINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[MAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[MAXBILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[AUTOREN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[MSTCNTRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILFRRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[TOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[PREPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILONDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILCYC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[BILSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[CNTCOVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Contract_Coverage_Period_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[USECVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[CNFGLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[CNFGSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Contract_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Contract_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Liabiltiy_Reduction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Total_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[NUMOFINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[New_Invoice_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[Contract_Line_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[Contract_Renewal_Contact]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[Contract_Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Liability_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Next_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[Last_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Total_Liability_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Unit_Cost_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[SVC_Liability_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[SVC_Contract_Signed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[SVC_Monthly_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[SVC_Invoiced_Discount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[SVC_Discount_Recognized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[SVC_Discount_Remaining]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[SVC_Discount_Next]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[SVC_PM_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[SVC_PM_Day]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00601].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGVALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGRETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGRTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGLASTAmountBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGTOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGMINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGMAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Originating_Max_Billable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGTOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Orig_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigTotLiabilityAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigTotLiabBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[Originating_Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigDiscountReceived]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigDiscountRemaining]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigDiscountNext]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGUNITCOSTTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGMONTHPRICE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORIGINVOICEDDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigNewInvoiceAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[MovedRevenue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OriginalTotal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigMovedRevenue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00601].[OrigOriginalTotal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00601].[Credit_Hold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00601].[ITEMDESC]'
GO
GRANT SELECT ON  [dbo].[SVC00601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00601] TO [DYNGRP]
GO
