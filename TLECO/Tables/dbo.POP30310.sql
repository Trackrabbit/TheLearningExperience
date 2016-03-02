CREATE TABLE [dbo].[POP30310]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITDSC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[ACTLSHIP] [datetime] NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVINDX] [int] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RcptLineNoteIDArray_1] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_2] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_3] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_4] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_5] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_6] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_7] [numeric] (19, 5) NOT NULL,
[RcptLineNoteIDArray_8] [numeric] (19, 5) NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTCODE] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTYPE] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[BOLPRONUMBER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Capital_Item] [tinyint] NOT NULL,
[Product_Indicator] [smallint] NOT NULL,
[Purchase_IV_Item_Taxable] [smallint] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Site_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[PURPVIDX] [int] NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_Warnings] [smallint] NOT NULL,
[Landed_Cost] [tinyint] NOT NULL,
[Invoice_Match] [tinyint] NOT NULL,
[RCPTRETNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTRETLNNUM] [int] NOT NULL,
[INVRETNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INVRETLNNUM] [int] NOT NULL,
[ISLINEINTRA] [tinyint] NOT NULL,
[ProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TrackedDropShipped] [tinyint] NOT NULL,
[OriginatingPrepaymentAmt] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_POP30310_I] ON [dbo].[POP30310]  FOR INSERT  AS  declare @RCVNumber char(21),  @PONumber char(21),  @RCVLineSeq int,  @POLineSeq int,  @ItemNumber char(31),  @Qty numeric(19,5),  @UoM char(9),  @Location char(11),  @VendorID char(15),  @Tracking smallint,  @UserDate datetime,  @POLNESTA smallint,  @Bin char(15) ,  @UMQTYINB numeric(19,5),  @DECPLCUR smallint,  @DECPLQTY smallint,  @POPType smallint  select  @RCVNumber=POPRCTNM, @RCVLineSeq=RCPTLNNM, @ItemNumber=ITEMNMBR, @DECPLCUR = DECPLCUR, @DECPLQTY = DECPLQTY,  @UMQTYINB = UMQTYINB, @Location = LOCNCODE,@UoM=UOFM,@Tracking=ITMTRKOP from inserted select @Bin = ''  if ltrim(rtrim(@RCVNumber)) > ''  BEGIN  select @UserDate = receiptdate from POP30300 where POPRCTNM = @RCVNumber  select @PONumber = PONUMBER,@POLineSeq = POLNENUM, @VendorID = VENDORID, @POPType = POPTYPE,  @Qty = CASE  when  (QTYSHPPD > 0 ) then (QTYSHPPD-QTYREJ)  else QTYINVCD END  from POP10500   where POPRCTNM = @RCVNumber and RCPTLNNM = @RCVLineSeq and POPTYPE <> 2 and (QTYSHPPD > 0 or QTYINVCD > 0)   if @PONumber > ''   Begin  if @POPType = 8   begin  exec svcInTransitItemReceived @PONumber, @POLineSeq, @ItemNumber, @Qty, @UoM, @Location, @RCVNumber,@RCVLineSeq,@VendorID,@Tracking,@UserDate, @Bin, @UMQTYINB, @DECPLCUR, @DECPLQTY  end  else if exists(select * from SVC00998)  begin  select @POLNESTA = POLNESTA from POP10110 where PONUMBER = @PONumber and ORD = @POLineSeq  if @POLNESTA = 4 or @POLNESTA = 5 or @POLNESTA = 2   exec SVC_Item_Received @PONumber, @POLineSeq, @ItemNumber, @Qty, @UoM, @Location, @RCVNumber,@RCVLineSeq,@VendorID,@Tracking,@UserDate, @Bin, @UMQTYINB, @DECPLCUR, @DECPLQTY  end  End  else if exists(select * from SVC00998)  Begin  if (select POPTYPE from POP10500 where POPRCTNM = @RCVNumber and RCPTLNNM = @RCVLineSeq and POLNENUM = 0) <> 2  exec SVC_Item_Received '', 0, @ItemNumber, @Qty, @UoM, @Location, @RCVNumber,@RCVLineSeq,@VendorID,@Tracking,@UserDate, @Bin, @UMQTYINB, @DECPLCUR, @DECPLQTY  else  begin  select @PONumber = PONUMBER,@POLineSeq = POLNENUM, @VendorID = VENDORID,   @Qty = QTYINVCD, @POPType = POPTYPE  from POP10500 where POPRCTNM = @RCVNumber and RCPTLNNM = @RCVLineSeq and POPTYPE = 2  exec svcPopReceivedNonInventoried @PONumber, @POLineSeq, @ItemNumber, @Qty,@RCVNumber, @RCVLineSeq, @VendorID, @UserDate  end  End  END    
GO
ALTER TABLE [dbo].[POP30310] ADD CONSTRAINT [CK__POP30310__ACTLSH__218BE82B] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[POP30310] ADD CONSTRAINT [PKPOP30310] PRIMARY KEY NONCLUSTERED  ([POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP30310] ON [dbo].[POP30310] ([ITEMNMBR], [POPRCTNM], [RCPTLNNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP30310] ON [dbo].[POP30310] ([POPRCTNM], [RCPTLNNM], [UNITCOST], [DECPLQTY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP30310] ON [dbo].[POP30310] ([Product_Indicator], [JOBNUMBR], [COSTCODE], [POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[VNDITDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30310].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[RcptLineNoteIDArray_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[COSTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[COSTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[BOLPRONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Capital_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Product_Indicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Purchase_IV_Item_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[Purchase_Site_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Landed_Cost_Warnings]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Landed_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[Invoice_Match]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[RCPTRETNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[RCPTRETLNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[INVRETNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[INVRETLNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[ISLINEINTRA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[ProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30310].[CostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30310].[TrackedDropShipped]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[OriginatingPrepaymentAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30310].[ORTDISAM]'
GO
GRANT SELECT ON  [dbo].[POP30310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP30310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP30310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP30310] TO [DYNGRP]
GO
