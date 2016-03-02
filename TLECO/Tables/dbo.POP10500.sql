CREATE TABLE [dbo].[POP10500]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POLNENUM] [int] NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[QTYSHPPD] [numeric] (19, 5) NOT NULL,
[QTYINVCD] [numeric] (19, 5) NOT NULL,
[QTYREJ] [numeric] (19, 5) NOT NULL,
[QTYMATCH] [numeric] (19, 5) NOT NULL,
[QTYRESERVED] [numeric] (19, 5) NOT NULL,
[QTYINVRESERVE] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[OLDCUCST] [numeric] (19, 5) NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTCODE] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTYPE] [smallint] NOT NULL,
[ORCPTCOST] [numeric] (19, 5) NOT NULL,
[OSTDCOST] [numeric] (19, 5) NOT NULL,
[APPYTYPE] [smallint] NOT NULL,
[POPTYPE] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXLOCTN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATERECD] [datetime] NOT NULL,
[RCTSEQNM] [int] NOT NULL,
[SPRCTSEQ] [int] NOT NULL,
[PCHRPTCT] [numeric] (19, 5) NOT NULL,
[SPRCPTCT] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[RUPPVAMT] [numeric] (19, 5) NOT NULL,
[ACPURIDX] [int] NOT NULL,
[INVINDX] [int] NOT NULL,
[UPPVIDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Capital_Item] [tinyint] NOT NULL,
[Product_Indicator] [smallint] NOT NULL,
[Total_Landed_Cost_Amount] [numeric] (19, 5) NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[Posted_LC_PPV_Amount] [numeric] (19, 5) NOT NULL,
[QTYREPLACED] [numeric] (19, 5) NOT NULL,
[QTYINVADJ] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSvcPop10500U] ON [dbo].[POP10500] FOR UPDATE AS  declare @RCVNumber char(21),  @PONumber char(21),  @RCVLineSeq numeric(19,5),  @POLineSeq numeric(19,5),  @POPTYPE smallint,  @ItemNumber char(31),  @Qty numeric(19,5),  @QtyRejected numeric(19,5),  @UoM char(9),  @Location char(11),  @VendorID char(15),  @Tracking smallint,  @UserDate datetime,  @POLNESTA int,  @Bin char(15) ,  @UMQTYINB numeric(19,5),  @DECPLCUR smallint,  @DECPLQTY smallint,  @OldStatus smallint,  @NewStatus smallint,  @TransferLineStatus smallint,  @AccountIndex int,  @TotalLotQty numeric (19,5),  @LotQty numeric (19,5),  @Sequence int  select  @RCVNumber=POPRCTNM, @RCVLineSeq=RCPTLNNM, @PONumber =PONUMBER , @POLineSeq = POLNENUM, @POPTYPE = POPTYPE,  @Qty = QTYSHPPD, @QtyRejected = QTYREJ, @NewStatus = Status from inserted  select  @OldStatus = Status from deleted  if @POPTYPE = 8 and @NewStatus = 1 and @OldStatus = 0  BEGIN  if exists(select * from SVC00701 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq and STATUS < 6)  Begin  update SVC00701 with (rowlock) set QTYRECVD = QTYRECVD + @Qty - @QtyRejected where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq    if (select (QTYRECVD - TRNSFQTY) from SVC00701 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq ) = 0   Begin  update SVC00702 with (rowlock) set POSTED = 1, STATUS = 6 where ORDDOCID = @PONumber and TRANSLINESEQ = @POLineSeq and OVRSERLT = 1  update SVC00701 with (rowlock) set STATUS = 6 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq   exec SVC_Set_XFR_HDR_Status @PONumber  if (select STATUS from SVC00700 where ORDDOCID = @PONumber) = 6   exec SVC_Transfer_TransferToHistory @PONumber  End   else  Begin  if (select (QTYSHPPD - TRNSFQTY) from SVC00701 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq ) = 0   select @TransferLineStatus = 5  else  select @TransferLineStatus = 3   if exists(select * from SVC00702 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq )  begin  select @TotalLotQty = @Qty - @QtyRejected   declare XBin_record cursor for select SLTSQNUM, SERLTQTY from SVC00702   where ORDDOCID = @PONumber and TRANSLINESEQ = @POLineSeq and OVRSERLT = 1 and POSTED = 0  open XBin_record   fetch next from XBin_record into @Sequence, @LotQty  while @@FETCH_STATUS = 0 and @TotalLotQty > 0  begin  if @TotalLotQty >= @LotQty  update SVC00702 set POSTED = 1, STATUS = 6 where  ORDDOCID = @PONumber and TRANSLINESEQ = @POLineSeq and SLTSQNUM = @Sequence and OVRSERLT = 1 and POSTED = 0  else  update SVC00702 set STATUS = 5 where  ORDDOCID = @PONumber and TRANSLINESEQ = @POLineSeq and SLTSQNUM = @Sequence and OVRSERLT = 1 and POSTED = 0   select @TotalLotQty = @TotalLotQty - @LotQty   fetch next from XBin_record into @Sequence, @LotQty  end  close XBin_record  deallocate XBin_record   end   update SVC00701 with (rowlock) set STATUS = @TransferLineStatus where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq   exec SVC_Set_XFR_HDR_Status @PONumber  End   End  END else if @POPTYPE = 8  Begin  select @AccountIndex = ACTINDX from SVC00731 where ORDDOCID = @PONumber and LNITMSEQ = @POLineSeq and SVC_Distribution_Type = 5 and POSTED = 0  if @AccountIndex > 0   update POP10310 set INVINDX = @AccountIndex where POPRCTNM = @RCVNumber and RCPTLNNM = @RCVLineSeq  End    
GO
ALTER TABLE [dbo].[POP10500] ADD CONSTRAINT [CK__POP10500__DATERE__68536ACF] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[POP10500] ADD CONSTRAINT [PKPOP10500] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM], [PONUMBER], [POLNENUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP10500] ON [dbo].[POP10500] ([ITEMNMBR], [TRXLOCTN], [QTYTYPE], [DATERECD], [RCTSEQNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10500] ON [dbo].[POP10500] ([PONUMBER], [POLNENUM], [Status], [APPYTYPE], [POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10500] ON [dbo].[POP10500] ([PONUMBER], [VENDORID], [Status], [ITEMNMBR], [UOFM], [APPYTYPE], [POPRCTNM], [RCPTLNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10500] ON [dbo].[POP10500] ([Product_Indicator], [JOBNUMBR], [COSTCODE], [POPRCTNM], [RCPTLNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6POP10500] ON [dbo].[POP10500] ([VENDORID], [Status], [ITEMNMBR], [APPYTYPE], [PONUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[POLNENUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYSHPPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYINVCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYREJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYMATCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYRESERVED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYINVRESERVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[OLDCUCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[COSTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[COSTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[ORCPTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[OSTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[APPYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[POPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[TRXLOCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10500].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[RCTSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[SPRCTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[PCHRPTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[SPRCPTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[RUPPVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[UPPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10500].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[Capital_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[Product_Indicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[Total_Landed_Cost_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10500].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[Posted_LC_PPV_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYREPLACED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10500].[QTYINVADJ]'
GO
GRANT SELECT ON  [dbo].[POP10500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10500] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POP10500] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[POP10500] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[POP10500] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[POP10500] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[POP10500] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[POP10500] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[POP10500] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[POP10500] TO [rpt_shipping and receiving]
GO
