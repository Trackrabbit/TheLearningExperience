CREATE TABLE [dbo].[POP10110]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[POLNESTA] [smallint] NOT NULL,
[POTYPE] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITDSC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[QTYCANCE] [numeric] (19, 5) NOT NULL,
[QTYCMTBASE] [numeric] (19, 5) NOT NULL,
[QTYUNCMTBASE] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[INVINDX] [int] NOT NULL,
[REQDATE] [datetime] NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[PRMSHPDTE] [datetime] NOT NULL,
[REQSTDBY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[POLNEARY_1] [numeric] (19, 5) NOT NULL,
[POLNEARY_2] [numeric] (19, 5) NOT NULL,
[POLNEARY_3] [numeric] (19, 5) NOT NULL,
[POLNEARY_4] [numeric] (19, 5) NOT NULL,
[POLNEARY_5] [numeric] (19, 5) NOT NULL,
[POLNEARY_6] [numeric] (19, 5) NOT NULL,
[POLNEARY_7] [numeric] (19, 5) NOT NULL,
[POLNEARY_8] [numeric] (19, 5) NOT NULL,
[POLNEARY_9] [numeric] (19, 5) NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[BRKFLD1] [smallint] NOT NULL,
[PO_Line_Status_Orig] [smallint] NOT NULL,
[QTY_Canceled_Orig] [numeric] (19, 5) NOT NULL,
[OPOSTSUB] [numeric] (19, 5) NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTCODE] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTYPE] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[LINEORIGIN] [smallint] NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[Capital_Item] [tinyint] NOT NULL,
[Product_Indicator] [smallint] NOT NULL,
[Source_Document_Number] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Source_Document_Line_Num] [smallint] NOT NULL,
[RELEASEBYDATE] [datetime] NOT NULL,
[Released_Date] [datetime] NOT NULL,
[Change_Order_Flag] [smallint] NOT NULL,
[Purchase_IV_Item_Taxable] [smallint] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Site_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHSITETXSCHSRC] [smallint] NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PLNNDSPPLID] [smallint] NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[OrigBackoutTradeDiscTax] [numeric] (19, 5) NOT NULL,
[LineNumber] [smallint] NOT NULL,
[ORIGPRMDATE] [datetime] NOT NULL,
[FSTRCPTDT] [datetime] NOT NULL,
[LSTRCPTDT] [datetime] NOT NULL,
[RELEASE] [smallint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRSOURCE] [smallint] NOT NULL,
[Flags] [smallint] NOT NULL,
[ProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[QTYCommittedInBaseOrig] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__POP10110__DEX_RO__2819E74A] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_POP10110_D] ON [dbo].[POP10110] FOR DELETE  AS  declare @CallNumber char(11) declare @LineSeq int declare @EquipLine int declare @RecType smallint declare @PONumber char(17) declare @POLine numeric(19,5) declare @LineType char(3) declare @POLNESTA int declare @CMPNTSEQ int declare @User_ID char(15) declare @OfficeID char(11) declare @Backorder_Status char(3) declare @grouping tinyint declare @RTVNumber char(15) declare @RTVLine numeric(19,5) declare @MinDate datetime  if not exists(select * from SVC00998) return exec smGetMinDate @MinDate output   declare servicecall cursor for   select PONUMBER,ORD, POLNESTA  from deleted  set nocount on  open servicecall fetch next from servicecall into @PONumber, @POLine, @POLNESTA while @@FETCH_STATUS = 0  BEGIN  if @POLNESTA = 5  BEGIN   fetch next from servicecall into @PONumber, @POLine, @POLNESTA  CONTINUE  END   select @RecType = SRVRECTYPE,  @CallNumber = CALLNBR,  @LineSeq = LNITMSEQ,  @EquipLine = EQPLINE, @CMPNTSEQ = CMPNTSEQ,  @LineType = LINITMTYP from SVC00203 where  PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @CallNumber is not Null or @CallNumber <> ''  BEGIN  select @User_ID = SYSTEM_USER  select @Backorder_Status = Backorder_Status,@grouping = SVC_Disable_XFR_Grouping from SVC00998  if @LineType <> 'P' select @Backorder_Status= ''  update SVC00203 set PONMBRSTR = '', POLNSEQ = 0.0,SRVSTAT = @Backorder_Status  where SRVRECTYPE = @RecType and  CALLNBR = @CallNumber and  EQPLINE = @EquipLine and  LNITMSEQ = @LineSeq and  LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  if @LineType = 'P'  begin  exec SVC_Set_SC_HDR_Status @RecType,@CallNumber  select @OfficeID = OFFID from SVC00200 where   SRVRECTYPE = @RecType and CALLNBR = @CallNumber  if @grouping = 0  select @grouping = 1  else  select @grouping = 0   insert into SVC00710  select CALLNBR,  1,  ITEMNMBR,   LNITMSEQ,   ITEMDESC,   LOCNCODE,   QTYORDER,   TRNSFLOC,   TECHID,   QTYBACKO,   UOFM,   ATYALLOC,   TRNSFQTY,   '',  @OfficeID,  0,   SVC_Disable_XFR_Grouping,   @User_ID,  0,   '',   '',  '',SVC_Address_Option,'',@MinDate,0,  '', @CMPNTSEQ  from SVC00203  where SRVRECTYPE = @RecType and  CALLNBR = @CallNumber and  EQPLINE = @EquipLine and  LNITMSEQ = @LineSeq and  LINITMTYP = @LineType  end  END  select @RecType = WORECTYPE,  @CallNumber = WORKORDNUM,  @LineSeq = LNITMSEQ,  @LineType = LINITMTYP from SVC06101 where  PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @CallNumber is not Null or @CallNumber <> ''  BEGIN  select @User_ID = SYSTEM_USER  select @Backorder_Status = WOBOSTAT,@grouping = SVC_Disable_XFR_Grouping from SVC00998  update SVC06101 set PONMBRSTR = '', POLNSEQ = 0.0,WOSTAT = @Backorder_Status  where WORECTYPE = @RecType and  WORKORDNUM = @CallNumber and  LNITMSEQ = @LineSeq and  LINITMTYP = @LineType  exec SVC_Calc_WO_Status @CallNumber  if @grouping = 0  select @grouping = 1  else  select @grouping = 0  select @OfficeID = OFFID from SVC06100 where WORECTYPE = @RecType and WORKORDNUM = @CallNumber  insert into SVC00710  select WORKORDNUM,  2,   ITEMNMBR,    LNITMSEQ,   ITEMDESC,   LOCNCODE,   QTYORDER,   '',   TECHID,   QTYBACKO,   UOFM,   ATYALLOC,    0.0,   STATIONID,  @OfficeID,  0,   @grouping,   @User_ID,  0,   '',   '',   '',0,'',@MinDate,0,  '', 0  from SVC06101  where WORECTYPE = @RecType and  WORKORDNUM = @CallNumber and  LNITMSEQ = @LineSeq and  LINITMTYP = @LineType  END   select @RTVNumber = RTV_Number, @RTVLine = RTV_Line  from SVC05601  where PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @RTVNumber > ''  BEGIN  update SVC05601  set PONMBRSTR = '', POLNSEQ = 0.0  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine  END  fetch next from servicecall into @PONumber, @POLine, @POLNESTA  END deallocate servicecall  return    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_POP10110_U] ON [dbo].[POP10110] FOR UPDATE  AS  declare @CallNumber char(11) declare @LineSeq int declare @EquipLine int declare @RecType smallint declare @PONumber char(17) declare @POLine numeric(19,5) declare @LineType char(3) declare @CMPNTSEQ int declare @Backorder_Status char(3) declare @Entry_Status char(3) declare @grouping tinyint declare @RTVNumber char(15) declare @RTVLine numeric(19,5) declare @LineStatus smallint declare @QtyCancel numeric(19,5), @OldQtyCancel numeric(19,5) declare @CurrentStatus char(3) declare @RTVStatus char(3), @RTVType char (10)  if not exists(select * from SVC00998) return  select @OldQtyCancel = QTYCANCE from deleted select @LineStatus = POLNESTA, @PONumber = PONUMBER , @POLine =ORD, @QtyCancel = QTYCANCE from inserted  if (@LineStatus = 6 or @QtyCancel > 0)  begin  select @RecType = SRVRECTYPE,  @CallNumber = CALLNBR,  @LineSeq = LNITMSEQ, @CurrentStatus = SRVSTAT,  @EquipLine = EQPLINE, @CMPNTSEQ = CMPNTSEQ,  @LineType = LINITMTYP from SVC00203 where  PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @CallNumber is not Null or @CallNumber <> ''  BEGIN  select @Backorder_Status = Backorder_Status, @Entry_Status = SRVSTAT from SVC00998  if @LineType <> 'P'   select @Backorder_Status= @Entry_Status   if @LineStatus = 6  update SVC00203 set PONMBRSTR = '', POLNSEQ = 0.0,SRVSTAT = @Backorder_Status  where SRVRECTYPE = @RecType and CALLNBR = @CallNumber and   EQPLINE = @EquipLine and LNITMSEQ = @LineSeq and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ   else IF UPDATE(QTYCANCE)   begin  update SVC00203 with (rowlock) set QTYORDER = QTYORDER - @QtyCancel + @OldQtyCancel, QTYBACKO = QTYBACKO - @QtyCancel + @OldQtyCancel  where SRVRECTYPE = @RecType and CALLNBR = @CallNumber and   EQPLINE = @EquipLine and LNITMSEQ = @LineSeq and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  if (select QTYBACKO from SVC00203 where SRVRECTYPE = @RecType and CALLNBR = @CallNumber and   EQPLINE = @EquipLine and LNITMSEQ = @LineSeq and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ) = 0   update SVC00203 with (rowlock) set SRVSTAT = @Entry_Status  where SRVRECTYPE = @RecType and CALLNBR = @CallNumber and   EQPLINE = @EquipLine and LNITMSEQ = @LineSeq and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  end  exec SVC_Set_SC_HDR_Status @RecType,@CallNumber   if @LineType = 'P' and @LineStatus = 6  exec SVC_Create_Inv_Requirement 1, @RecType,@CallNumber, @EquipLine, @LineSeq, @LineType, @CMPNTSEQ  END   else  BEGIN  select @RecType = WORECTYPE,  @CallNumber = WORKORDNUM,  @LineSeq = LNITMSEQ, @CMPNTSEQ = CMPNTSEQ,   @LineType = LINITMTYP from SVC06101 where  PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @CallNumber is not Null or @CallNumber <> ''  BEGIN  select @Backorder_Status = WOBOSTAT, @Entry_Status = WOENTSTA from SVC00998  update SVC06101 with (rowlock) set PONMBRSTR = '', POLNSEQ = 0.0,WOSTAT = @Backorder_Status  where WORECTYPE = @RecType and WORKORDNUM = @CallNumber and  LNITMSEQ = @LineSeq and LINITMTYP = @LineType and CMPNTSEQ = @CMPNTSEQ  exec SVC_Calc_WO_Status @CallNumber  exec SVC_Create_Inv_Requirement 2, @RecType,@CallNumber, 0, @LineSeq, @LineType, @CMPNTSEQ  END  else  BEGIN  select @RTVNumber = RTV_Number, @RTVLine = RTV_Line, @RTVType = RTV_Type   from SVC05601 where PONMBRSTR = @PONumber and POLNSEQ = @POLine  if @RTVNumber > ''  begin  select @RTVStatus = RTV_Received_Status from SVC05003 where RTV_Type = @RTVType  update SVC05601 with (rowlock) set PONMBRSTR = '', POLNSEQ = 0.0, RTV_Return_Status = @RTVStatus, RTV_Status = 5  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine  end  END  END  end return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_POP10110U] ON [dbo].[POP10110] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.POP10110 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.POP10110, inserted WHERE POP10110.PONUMBER = inserted.PONUMBER AND POP10110.ORD = inserted.ORD AND POP10110.BRKFLD1 = inserted.BRKFLD1 END set nocount off    
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__FSTRCP__26319ED8] CHECK ((datepart(hour,[FSTRCPTDT])=(0) AND datepart(minute,[FSTRCPTDT])=(0) AND datepart(second,[FSTRCPTDT])=(0) AND datepart(millisecond,[FSTRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__LSTRCP__2725C311] CHECK ((datepart(hour,[LSTRCPTDT])=(0) AND datepart(minute,[LSTRCPTDT])=(0) AND datepart(second,[LSTRCPTDT])=(0) AND datepart(millisecond,[LSTRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__ORIGPR__253D7A9F] CHECK ((datepart(hour,[ORIGPRMDATE])=(0) AND datepart(minute,[ORIGPRMDATE])=(0) AND datepart(second,[ORIGPRMDATE])=(0) AND datepart(millisecond,[ORIGPRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__PRMDAT__216CE9BB] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__PRMSHP__22610DF4] CHECK ((datepart(hour,[PRMSHPDTE])=(0) AND datepart(minute,[PRMSHPDTE])=(0) AND datepart(second,[PRMSHPDTE])=(0) AND datepart(millisecond,[PRMSHPDTE])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__RELEAS__2355322D] CHECK ((datepart(hour,[RELEASEBYDATE])=(0) AND datepart(minute,[RELEASEBYDATE])=(0) AND datepart(second,[RELEASEBYDATE])=(0) AND datepart(millisecond,[RELEASEBYDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__Releas__24495666] CHECK ((datepart(hour,[Released_Date])=(0) AND datepart(minute,[Released_Date])=(0) AND datepart(second,[Released_Date])=(0) AND datepart(millisecond,[Released_Date])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [CK__POP10110__REQDAT__2078C582] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10110] ADD CONSTRAINT [PKPOP10110] PRIMARY KEY NONCLUSTERED  ([PONUMBER], [ORD], [BRKFLD1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10110] ON [dbo].[POP10110] ([ITEMNMBR], [PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8POP10110] ON [dbo].[POP10110] ([ITEMNMBR], [QTYUNCMTBASE], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7POP10110] ON [dbo].[POP10110] ([ITEMNMBR], [REQDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10110] ON [dbo].[POP10110] ([POLNESTA], [PONUMBER], [ORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP10110] ON [dbo].[POP10110] ([PONUMBER], [ITEMNMBR], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6POP10110] ON [dbo].[POP10110] ([PONUMBER], [VNDITNUM], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9POP10110] ON [dbo].[POP10110] ([Product_Indicator], [JOBNUMBR], [COSTCODE], [PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10110] ON [dbo].[POP10110] ([VNDITNUM], [PONUMBER], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[POLNESTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[POTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[VNDITDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTYCMTBASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTYUNCMTBASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[PRMSHPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[REQSTDBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[POLNEARY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[PO_Line_Status_Orig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTY_Canceled_Orig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[OPOSTSUB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[COSTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[COSTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[LINEORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Capital_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Product_Indicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[Source_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Source_Document_Line_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[RELEASEBYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[Released_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Change_Order_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Purchase_IV_Item_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[Purchase_Site_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[PURCHSITETXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[PLNNDSPPLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[BackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[OrigBackoutTradeDiscTax]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[LineNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[ORIGPRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[FSTRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10110].[LSTRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[RELEASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[ADDRSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[ProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10110].[CostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10110].[Print_Phone_NumberGB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10110].[QTYCommittedInBaseOrig]'
GO
GRANT SELECT ON  [dbo].[POP10110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10110] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP10110] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP10110] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP10110] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP10110] TO [RAPIDGRP]
GO
