CREATE TABLE [dbo].[IV00102]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCRDTYPE] [smallint] NOT NULL,
[PRIMVNDR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMFRFLG] [tinyint] NOT NULL,
[BGNGQTY] [numeric] (19, 5) NOT NULL,
[LSORDQTY] [numeric] (19, 5) NOT NULL,
[LRCPTQTY] [numeric] (19, 5) NOT NULL,
[LSTORDDT] [datetime] NOT NULL,
[LSORDVND] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSRCPTDT] [datetime] NOT NULL,
[QTYRQSTN] [numeric] (19, 5) NOT NULL,
[QTYONORD] [numeric] (19, 5) NOT NULL,
[QTYBKORD] [numeric] (19, 5) NOT NULL,
[QTY_Drop_Shipped] [numeric] (19, 5) NOT NULL,
[QTYINUSE] [numeric] (19, 5) NOT NULL,
[QTYINSVC] [numeric] (19, 5) NOT NULL,
[QTYRTRND] [numeric] (19, 5) NOT NULL,
[QTYDMGED] [numeric] (19, 5) NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[QTYCOMTD] [numeric] (19, 5) NOT NULL,
[QTYSOLD] [numeric] (19, 5) NOT NULL,
[NXTCNTDT] [datetime] NOT NULL,
[NXTCNTTM] [datetime] NOT NULL,
[LSTCNTDT] [datetime] NOT NULL,
[LSTCNTTM] [datetime] NOT NULL,
[STCKCNTINTRVL] [smallint] NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUYERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PLANNERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDERPOLICY] [smallint] NOT NULL,
[FXDORDRQTY] [numeric] (19, 5) NOT NULL,
[ORDRPNTQTY] [numeric] (19, 5) NOT NULL,
[NMBROFDYS] [smallint] NOT NULL,
[MNMMORDRQTY] [numeric] (19, 5) NOT NULL,
[MXMMORDRQTY] [numeric] (19, 5) NOT NULL,
[ORDERMULTIPLE] [numeric] (19, 5) NOT NULL,
[REPLENISHMENTMETHOD] [smallint] NOT NULL,
[SHRINKAGEFACTOR] [numeric] (19, 5) NOT NULL,
[PRCHSNGLDTM] [numeric] (19, 5) NOT NULL,
[MNFCTRNGFXDLDTM] [numeric] (19, 5) NOT NULL,
[MNFCTRNGVRBLLDTM] [numeric] (19, 5) NOT NULL,
[STAGINGLDTME] [numeric] (19, 5) NOT NULL,
[PLNNNGTMFNCDYS] [smallint] NOT NULL,
[DMNDTMFNCPRDS] [smallint] NOT NULL,
[INCLDDINPLNNNG] [tinyint] NOT NULL,
[CALCULATEATP] [tinyint] NOT NULL,
[AUTOCHKATP] [tinyint] NOT NULL,
[PLNFNLPAB] [tinyint] NOT NULL,
[FRCSTCNSMPTNPRD] [smallint] NOT NULL,
[ORDRUPTOLVL] [numeric] (19, 5) NOT NULL,
[SFTYSTCKQTY] [numeric] (19, 5) NOT NULL,
[REORDERVARIANCE] [numeric] (19, 5) NOT NULL,
[PORECEIPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORETRNBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOFULFILLMENTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORETURNBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BOMRCPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MATERIALISSUEBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MORECEIPTBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPAIRISSUESBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ReplenishmentLevel] [smallint] NOT NULL,
[POPOrderMethod] [smallint] NOT NULL,
[MasterLocationCode] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPVendorSelection] [smallint] NOT NULL,
[POPPricingSelection] [smallint] NOT NULL,
[PurchasePrice] [numeric] (19, 5) NOT NULL,
[IncludeAllocations] [tinyint] NOT NULL,
[IncludeBackorders] [tinyint] NOT NULL,
[IncludeRequisitions] [tinyint] NOT NULL,
[PICKTICKETITEMOPT] [smallint] NOT NULL,
[INCLDMRPMOVEIN] [tinyint] NOT NULL,
[INCLDMRPMOVEOUT] [tinyint] NOT NULL,
[INCLDMRPCANCEL] [tinyint] NOT NULL,
[Move_Out_Fence] [smallint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_Item_Site_Ext_U] ON [dbo].[IV00102]  FOR INSERT AS declare @rows int declare @datechange datetime declare @CreateEquip tinyint  select @rows = @@rowcount if @rows = 0   return if not exists(select * from SVC00998) return  if @rows <> (select count(*)  from inserted i, SVC00952 s  where i.ITEMNMBR = s.ITEMNMBR and  i.LOCNCODE = s.LOCNCODE)  if @@error <> 0  begin  raiserror ('error in tr_SVC_Item_Site_Ext_U', 16, 1)  rollback tran end begin  select @CreateEquip = SVC_Create_Non_Serial_Eq from SVC00998  select @CreateEquip = isnull(@CreateEquip,0)  insert SVC00952 (ITEMNMBR,LOCNCODE,Good_Stock,TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD,Used_Options,  SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq)  select distinct i.ITEMNMBR,i.LOCNCODE,1,' ',' ',0,' ',1,0,@CreateEquip  from inserted i  where i.LOCNCODE <> '' and not exists  (select *  from SVC00952 s  where s.ITEMNMBR = i.ITEMNMBR and  s.LOCNCODE = i.LOCNCODE)  if @@error <> 0   begin  raiserror ('error in tr_SVC_Site_Item_Ext_U', 16, 1)  rollback tran  end  if ((select Top 1 LOCNCODE from inserted where LOCNCODE <> '') > '') and ((select SVC_ItemDelta from SVC00998 ) = 1)   begin  select @datechange = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'   insert SVC00502 ( ITEMNMBR,  LOCNCODE,  RCRDTYPE,  QTYONHND,  ATYALLOC,  SVC_Delta_Type,  MODIFDT)   select distinct ITEMNMBR,LOCNCODE,2,QTYONHND,ATYALLOC,1,@datechange from inserted  end end return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_IV00102_D] ON [dbo].[IV00102]  FOR DELETE  AS declare @item char(31) declare @location char(11) declare @datechange datetime declare @useTA tinyint  if not exists(select * from SVC00998) return  select @useTA = SVC_ItemDelta from SVC00998 if @useTA = 1  BEGIN   select @item=ITEMNMBR,@location = LOCNCODE from deleted  if (@location = '')  begin  if exists(select * from SVC00502 where ITEMNMBR = @item)  delete SVC00502  where ITEMNMBR = @item  if exists(select * from SVC00952 where ITEMNMBR = @item)  delete SVC00952  where ITEMNMBR = @item   end  else  begin  if exists(select * from SVC00502 where ITEMNMBR = @item  and LOCNCODE = @location)   delete SVC00502  where ITEMNMBR = @item  and LOCNCODE = @location   if exists(select * from SVC00952 where ITEMNMBR = @item  and LOCNCODE = @location)   delete SVC00952  where ITEMNMBR = @item  and LOCNCODE = @location   end  END     
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_IV00102_U] ON [dbo].[IV00102]  FOR UPDATE AS declare @item char(31) declare @datechange datetime declare @qty numeric(19,5),@old_qty numeric(19,5) declare @alloc numeric(19,5),@old_alloc numeric(19,5) declare @location char(11) declare @useTA tinyint declare @RecType smallint  if not exists(select * from SVC00998) return  select @useTA = SVC_ItemDelta from SVC00998 if @useTA = 1 BEGIN  select @datechange = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'   declare IV_Line_Insert_Cursor cursor for select ITEMNMBR,RCRDTYPE,LOCNCODE,QTYONHND,ATYALLOC from inserted  open IV_Line_Insert_Cursor   fetch next from IV_Line_Insert_Cursor into @item, @RecType, @location,@qty,@alloc  while (@@FETCH_STATUS = 0)  BEGIN  if @location <> '' BEGIN  select @old_qty = QTYONHND, @old_alloc=ATYALLOC from IV00102 where   ITEMNMBR=@item and RCRDTYPE = @RecType and LOCNCODE = @location  if exists(select * from SVC00502 where ITEMNMBR = @item and LOCNCODE = @location)  begin  if @qty <> @old_qty or @alloc <> @old_alloc  begin  update SVC00502 set QTYONHND = @qty, ATYALLOC=@alloc, SVC_Delta_Type = 2, MODIFDT=@datechange where ITEMNMBR = @item and LOCNCODE = @location  end  end  ELSE  begin  if ((@location) > '')   insert SVC00502 ( ITEMNMBR,  LOCNCODE,  RCRDTYPE,  QTYONHND,  ATYALLOC,  SVC_Delta_Type,  MODIFDT)   select distinct @item,@location,2,@qty,@alloc,1,@datechange  end END   fetch next from IV_Line_Insert_Cursor into @item, @RecType, @location,@qty,@alloc  END  close IV_Line_Insert_Cursor   deallocate IV_Line_Insert_Cursor   END   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV00102C] ON [dbo].[IV00102] AFTER INSERT AS set nocount on BEGIN UPDATE dbo.IV00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV00101, inserted WHERE IV00101.ITEMNMBR = inserted.ITEMNMBR END set nocount off    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV00102D] ON [dbo].[IV00102] AFTER DELETE AS set nocount on BEGIN UPDATE dbo.IV00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV00101, deleted WHERE IV00101.ITEMNMBR = deleted.ITEMNMBR END set nocount off    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV00102U] ON [dbo].[IV00102] AFTER UPDATE AS  set nocount on BEGIN  UPDATE dbo.IV00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV00101, inserted WHERE IV00101.ITEMNMBR = inserted.ITEMNMBR END set nocount off    
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__LSTCNTT__6991A7CB] CHECK ((datepart(day,[LSTCNTTM])=(1) AND datepart(month,[LSTCNTTM])=(1) AND datepart(year,[LSTCNTTM])=(1900)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__NXTCNTT__6C6E1476] CHECK ((datepart(day,[NXTCNTTM])=(1) AND datepart(month,[NXTCNTTM])=(1) AND datepart(year,[NXTCNTTM])=(1900)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__LSRCPTD__67A95F59] CHECK ((datepart(hour,[LSRCPTDT])=(0) AND datepart(minute,[LSRCPTDT])=(0) AND datepart(second,[LSRCPTDT])=(0) AND datepart(millisecond,[LSRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__LSTCNTD__689D8392] CHECK ((datepart(hour,[LSTCNTDT])=(0) AND datepart(minute,[LSTCNTDT])=(0) AND datepart(second,[LSTCNTDT])=(0) AND datepart(millisecond,[LSTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__LSTORDD__6A85CC04] CHECK ((datepart(hour,[LSTORDDT])=(0) AND datepart(minute,[LSTORDDT])=(0) AND datepart(second,[LSTORDDT])=(0) AND datepart(millisecond,[LSTORDDT])=(0)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [CK__IV00102__NXTCNTD__6B79F03D] CHECK ((datepart(hour,[NXTCNTDT])=(0) AND datepart(minute,[NXTCNTDT])=(0) AND datepart(second,[NXTCNTDT])=(0) AND datepart(millisecond,[NXTCNTDT])=(0)))
GO
ALTER TABLE [dbo].[IV00102] ADD CONSTRAINT [PKIV00102] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [RCRDTYPE], [LOCNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV00102] ON [dbo].[IV00102] ([ITEMNMBR], [RCRDTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00102] ON [dbo].[IV00102] ([LOCNCODE], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV00102] ON [dbo].[IV00102] ([PRIMVNDR], [ITEMNMBR], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[PRIMVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[ITMFRFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[BGNGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[LSORDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[LRCPTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[LSTORDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[LSORDVND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[LSRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYRQSTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYONORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYBKORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTY_Drop_Shipped]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYINUSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYINSVC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYRTRND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYDMGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYCOMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[QTYSOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[NXTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[NXTCNTTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[LSTCNTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00102].[LSTCNTTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[STCKCNTINTRVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[BUYERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[PLANNERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[ORDERPOLICY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[FXDORDRQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[ORDRPNTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[NMBROFDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[MNMMORDRQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[MXMMORDRQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[ORDERMULTIPLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[REPLENISHMENTMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[SHRINKAGEFACTOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[PRCHSNGLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[MNFCTRNGFXDLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[MNFCTRNGVRBLLDTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[STAGINGLDTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[PLNNNGTMFNCDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[DMNDTMFNCPRDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[INCLDDINPLNNNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[CALCULATEATP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[AUTOCHKATP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[PLNFNLPAB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[FRCSTCNSMPTNPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[ORDRUPTOLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[SFTYSTCKQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[REORDERVARIANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[PORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[PORETRNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[SOFULFILLMENTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[SORETURNBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[BOMRCPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[MATERIALISSUEBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[MORECEIPTBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[REPAIRISSUESBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[ReplenishmentLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[POPOrderMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00102].[MasterLocationCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[POPVendorSelection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[POPPricingSelection]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00102].[PurchasePrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[IncludeAllocations]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[IncludeBackorders]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[IncludeRequisitions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[PICKTICKETITEMOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[INCLDMRPMOVEIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[INCLDMRPMOVEOUT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[INCLDMRPCANCEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[Move_Out_Fence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00102].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[IV00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00102] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV00102] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV00102] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV00102] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV00102] TO [RAPIDGRP]
GO
