CREATE TABLE [dbo].[POP10330]
(
[ITMTRKOP] [smallint] NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSvcPop10330D] ON [dbo].[POP10330] FOR DELETE AS  declare @RCVNumber char(21),  @TransferNumber char(21),  @RCVLineSeq numeric(19,5),  @TransferLine numeric(19,5),  @POPTYPE smallint,  @ItemNumber char(31),  @SerialLotNumber char(21),  @Qty numeric(19,5),  @UoM char(9),  @Location char(11),  @VendorID char(15),  @Tracking smallint  declare inTransitSerial cursor for  select POPRCTNM, RCPTLNNM, SERLTNUM , ITEMNMBR, SERLTQTY, ITMTRKOP from deleted  open inTransitSerial fetch next from inTransitSerial into @RCVNumber, @RCVLineSeq , @SerialLotNumber, @ItemNumber, @Qty, @Tracking while @@FETCH_STATUS = 0 BEGIN  if exists(select * from POP10500 where POPRCTNM =@RCVNumber and RCPTLNNM = @RCVLineSeq)  select @TransferNumber = PONUMBER, @TransferLine = POLNENUM, @POPTYPE = POPTYPE from POP10500 where POPRCTNM =@RCVNumber and RCPTLNNM = @RCVLineSeq  else  select @TransferNumber = ORDDOCID, @TransferLine = TRANSLINESEQ, @POPTYPE = 8 from SVC00702 where SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber  if @TransferNumber > ''and @TransferLine > 0 and @POPTYPE = 8  BEGIN  if exists(select * from SVC00702 where POSTED = 0 and  ORDDOCID = @TransferNumber and TRANSLINESEQ = @TransferLine and SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber)  begin  if @Tracking = 2  begin  update IV00200 set SERLNSLD = 1 where SERLNMBR = @SerialLotNumber and ITEMNMBR = @ItemNumber  update SVC00702 set OVRSERLT = 0 where   ORDDOCID = @TransferNumber and TRANSLINESEQ = @TransferLine and SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber  end  end  END  fetch next from inTransitSerial into @RCVNumber, @RCVLineSeq , @SerialLotNumber, @ItemNumber, @Qty, @Tracking END close inTransitSerial deallocate inTransitSerial return    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSvcPop10330I] ON [dbo].[POP10330] FOR INSERT AS  declare @RCVNumber char(21),  @TransferNumber char(21),  @RCVLineSeq int,  @SerialSeq int,  @TransferLine numeric(19,5),  @POPTYPE smallint,  @ItemNumber char(31),  @SerialLotNumber char(21),  @Qty numeric(19,5),  @UoM char(9),  @Location char(11),  @VendorID char(15),  @Tracking smallint,  @UnitCost numeric(19,5),  @DateReceived datetime,  @DateSeq numeric(19,5)  select @RCVNumber=POPRCTNM, @RCVLineSeq =RCPTLNNM, @SerialSeq = SLTSQNUM, @SerialLotNumber =SERLTNUM , @ItemNumber = ITEMNMBR,   @Qty = SERLTQTY, @Tracking = ITMTRKOP, @DateReceived = DATERECD, @DateSeq = DTSEQNUM from inserted  if exists(select * from POP10500 where POPRCTNM =@RCVNumber and RCPTLNNM = @RCVLineSeq)  select @TransferNumber = PONUMBER, @TransferLine = POLNENUM, @POPTYPE = POPTYPE from POP10500 where POPRCTNM =@RCVNumber and RCPTLNNM = @RCVLineSeq else  select @TransferNumber = ORDDOCID, @TransferLine = TRANSLINESEQ, @POPTYPE = 8 from SVC00702   where SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber and DTSEQNUM = @DateSeq and DATERECD = @DateReceived  if @TransferNumber > ''and @TransferLine > 0 and @POPTYPE = 8  BEGIN  if exists(select * from SVC00702 where ORDDOCID = @TransferNumber and TRANSLINESEQ = @TransferLine  and DTSEQNUM = @DateSeq and DATERECD = @DateReceived and SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber)  Begin  if @Tracking = 2  begin  update IV00200 set SERLNSLD = 1 where SERLNMBR = @SerialLotNumber and ITEMNMBR = @ItemNumber   update SVC00702 set OVRSERLT = 1 where ORDDOCID = @TransferNumber and TRANSLINESEQ = @TransferLine  and SERLTNUM = @SerialLotNumber and ITEMNMBR = @ItemNumber and DATERECD = @DateReceived and DTSEQNUM = @DateSeq  end  End   END return    
GO
ALTER TABLE [dbo].[POP10330] ADD CONSTRAINT [CK__POP10330__DATERE__5BED93EA] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[POP10330] ADD CONSTRAINT [CK__POP10330__EXPNDA__5CE1B823] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10330] ADD CONSTRAINT [CK__POP10330__MFGDAT__5DD5DC5C] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10330] ADD CONSTRAINT [PKPOP10330] PRIMARY KEY NONCLUSTERED  ([ITMTRKOP], [POPRCTNM], [RCPTLNNM], [QTYTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10330] ON [dbo].[POP10330] ([ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10330] ON [dbo].[POP10330] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10330].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10330].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10330].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10330].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10330].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10330].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10330].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10330].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10330].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10330].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10330].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10330].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10330].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10330].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10330].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[POP10330] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10330] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10330] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10330] TO [DYNGRP]
GO
