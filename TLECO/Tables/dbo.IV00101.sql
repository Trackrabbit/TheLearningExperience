CREATE TABLE [dbo].[IV00101]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ITMSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[ITMGEDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STNDCOST] [numeric] (19, 5) NOT NULL,
[CURRCOST] [numeric] (19, 5) NOT NULL,
[ITEMSHWT] [int] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ITMTSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXOPTNS] [smallint] NOT NULL,
[IVIVINDX] [int] NOT NULL,
[IVIVOFIX] [int] NOT NULL,
[IVCOGSIX] [int] NOT NULL,
[IVSLSIDX] [int] NOT NULL,
[IVSLDSIX] [int] NOT NULL,
[IVSLRNIX] [int] NOT NULL,
[IVINUSIX] [int] NOT NULL,
[IVINSVIX] [int] NOT NULL,
[IVDMGIDX] [int] NOT NULL,
[IVVARIDX] [int] NOT NULL,
[DPSHPIDX] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[UPPVIDX] [int] NOT NULL,
[IVRETIDX] [int] NOT NULL,
[ASMVRIDX] [int] NOT NULL,
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[LOTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[ALWBKORD] [tinyint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALTITEM1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALTITEM2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTRCDTY] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[WRNTYDYS] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PINFLIDX] [int] NOT NULL,
[PURMCIDX] [int] NOT NULL,
[IVINFIDX] [int] NOT NULL,
[INVMCIDX] [int] NOT NULL,
[CGSINFLX] [int] NOT NULL,
[CGSMCIDX] [int] NOT NULL,
[ITEMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PriceGroup] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRICMTHD] [smallint] NOT NULL,
[PRCHSUOM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SELNGUOM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KTACCTSR] [smallint] NOT NULL,
[LASTGENSN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABCCODE] [smallint] NOT NULL,
[Revalue_Inventory] [tinyint] NOT NULL,
[Tolerance_Percentage] [int] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Tax_Options] [smallint] NOT NULL,
[ITMPLNNNGTYP] [smallint] NOT NULL,
[STTSTCLVLPRCNTG] [smallint] NOT NULL,
[CNTRYORGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[MINSHELF1] [smallint] NOT NULL,
[MINSHELF2] [smallint] NOT NULL,
[INCLUDEINDP] [tinyint] NOT NULL,
[LOTEXPWARN] [tinyint] NOT NULL,
[LOTEXPWARNDAYS] [smallint] NOT NULL,
[LASTGENLOT] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Lot_Split_Quantity] [numeric] (19, 5) NOT NULL,
[UseQtyOverageTolerance] [tinyint] NOT NULL,
[UseQtyShortageTolerance] [tinyint] NOT NULL,
[QtyOverTolerancePercent] [int] NOT NULL,
[QtyShortTolerancePercent] [int] NOT NULL,
[IVSCRVIX] [int] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__IV00101__DEX_ROW__7B12D036] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_IV00101Del] on [dbo].[IV00101] for delete as  declare @mstrID int,  @status smallint  select @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from deleted   exec aagDelMstrRecord @mstrID, 4, 0, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_IV00101Ins] on [dbo].[IV00101] for insert as  declare @mstrID int,  @status smallint  select @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from inserted   exec aagInsMstrRecord @mstrID, 4, 0, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[SC_IV00101_Create_CRM_ITEMS_CH]
ON  [dbo].[IV00101]
FOR INSERT
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV00101'
    SELECT @MapId = 'CRM_ITEMS_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM INSERTED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV00101_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV00101_Track SET [Action] = 'CR', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV00101_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','CR',ITEMNMBR as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM INSERTED WHERE DEX_ROW_ID = @DEX_ROW_ID
            END			
                        		                               
		    FETCH NEXT FROM TRIGGER_CURSOR 
		    INTO @DEX_ROW_ID
        END 
	    CLOSE TRIGGER_CURSOR
	    DEALLOCATE TRIGGER_CURSOR
    END
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[SC_IV00101_Delete_CRM_ITEMS_CH]
ON  [dbo].[IV00101]
FOR DELETE
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV00101'
    SELECT @MapId = 'CRM_ITEMS_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM DELETED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV00101_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV00101_Track SET [Action] = 'DL', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV00101_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','DL',ITEMNMBR as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM DELETED WHERE DEX_ROW_ID = @DEX_ROW_ID
            END			
                        		                               
		    FETCH NEXT FROM TRIGGER_CURSOR 
		    INTO @DEX_ROW_ID
        END 
	    CLOSE TRIGGER_CURSOR
	    DEALLOCATE TRIGGER_CURSOR
    END
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[SC_IV00101_Update_CRM_ITEMS_CH]
ON  [dbo].[IV00101]
FOR UPDATE
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV00101'
    SELECT @MapId = 'CRM_ITEMS_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM INSERTED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV00101_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV00101_Track SET [Action] = 'UP', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV00101_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','UP',ITEMNMBR as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM INSERTED WHERE DEX_ROW_ID = @DEX_ROW_ID
            END			
                        		                               
		    FETCH NEXT FROM TRIGGER_CURSOR 
		    INTO @DEX_ROW_ID
        END 
	    CLOSE TRIGGER_CURSOR
	    DEALLOCATE TRIGGER_CURSOR
    END
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_Item_Ext_U] ON [dbo].[IV00101]  FOR INSERT AS declare @rows int  select @rows = @@rowcount if @rows = 0   return if not exists(select * from SVC00998) return  if @rows <> (select count(*)  from inserted i, SVC00951 s  where i.ITEMNMBR = s.ITEMNMBR)  if @@error <> 0  begin  raiserror ('Error Inserting Item Extension', 16, 1)  rollback tran end begin  insert SVC00951 (ITEMNMBR,UOMSCHDL,METERED,RTRNABLE,PRDLINE,WARRCDE,MTBF,MTBI,MTTR,RETCOST,SVC_PM_Allowed,SVC_Contractible,SLRWARR,VENDORID, SVC_Use_CurrentCost)  select distinct ITEMNMBR,'',0,0,'','',0,0,0,0,1,1,'','',1  from inserted  where ITEMNMBR <> ''  and ITEMNMBR not in  (select ITEMNMBR  from SVC00951)  if @@error <> 0   begin  raiserror ('Error Inserting Item Extension', 16, 1)  rollback tran  end end return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_IV00101_D] ON [dbo].[IV00101]  FOR DELETE  AS declare @item char(31) declare @datechange datetime  if not exists(select * from SVC00998) return  select @item=ITEMNMBR from deleted if exists(select * from SVC00951 where ITEMNMBR = @item)  delete from SVC00951 where ITEMNMBR = @item if exists(select * from SVC00501 where ITEMNMBR = @item)  begin  select @datechange = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'   update SVC00501 set SVC_Delta_Type = 3,MODIFDT = @datechange where ITEMNMBR = @item  end   return    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_IV00101_U] ON [dbo].[IV00101]  FOR UPDATE  AS declare @old_type smallint,@new_type smallint declare @old_desc char(51),@new_desc char(51) declare @old_short char(15),@new_short char(15) declare @old_track smallint,@new_track smallint declare @old_price numeric(19,5), @new_price numeric(19,5) declare @item char(31) declare @datechange datetime  if not exists(select * from SVC00998) return  if (select SVC_ItemDelta from SVC00998) = 1 BEGIN  select @old_type=ITEMTYPE,@old_desc = ITEMDESC,@old_short = ITMSHNAM,@old_track = ITMTRKOP,@old_price = 0 from deleted  select @item=ITEMNMBR,@new_type=ITEMTYPE,@new_desc = ITEMDESC,@new_short = ITMSHNAM,@new_track = ITMTRKOP,@new_price = 0 from inserted  if  @old_type <> @new_type or  @old_desc <> @new_desc or  @old_short <> @new_short or  @old_track <> @new_track or  @old_price <> @new_price  begin  select @datechange = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'   if exists(select * from SVC00501 where ITEMNMBR = @item)  begin  update SVC00501 set ITEMTYPE=@new_type,ITEMDESC=@new_desc,ITMSHNAM=@new_short,ITMTRKOP=@new_track,LISTPRCE=@new_price,  SVC_Delta_Type=2,MODIFDT = @datechange  where ITEMNMBR = @item  end  ELSE  begin  insert SVC00501  ( ITEMNMBR,  ITEMTYPE,  ITEMDESC,  ITMSHNAM,  ITMTRKOP,  LISTPRCE,  RTRNABLE,  METERED,  SVC_Delta_Type,  MODIFDT)   select ITEMNMBR,ITEMTYPE,ITEMDESC,ITMSHNAM,ITMTRKOP,0,0,0,1,  @datechange from inserted  end  end END   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_IV00101U] ON [dbo].[IV00101] AFTER UPDATE AS  set nocount on BEGIN   UPDATE dbo.IV00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV00101, inserted WHERE IV00101.ITEMNMBR = inserted.ITEMNMBR  END  set nocount off    
GO
ALTER TABLE [dbo].[IV00101] ADD CONSTRAINT [CK__IV00101__CREATDD__63D8CE75] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[IV00101] ADD CONSTRAINT [CK__IV00101__MODIFDT__64CCF2AE] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[IV00101] ADD CONSTRAINT [PKIV00101] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7IV00101] ON [dbo].[IV00101] ([ITEMCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00101] ON [dbo].[IV00101] ([ITEMDESC], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV00101] ON [dbo].[IV00101] ([ITMCLSCD], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5IV00101] ON [dbo].[IV00101] ([ITMGEDSC], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV00101] ON [dbo].[IV00101] ([ITMSHNAM], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6IV00101] ON [dbo].[IV00101] ([UOMSCHDL], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITMSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITMGEDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00101].[STNDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00101].[CURRCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ITEMSHWT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[TAXOPTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVIVOFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVCOGSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVSLSIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVSLDSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVSLRNIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVINUSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVINSVIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVDMGIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVVARIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[DPSHPIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[UPPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVRETIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ASMVRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[LOTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[KPDSTHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ALWBKORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ALTITEM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ALTITEM2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[USCATVLS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[MSTRCDTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00101].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[WRNTYDYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[PINFLIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[PURMCIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVINFIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[INVMCIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[CGSINFLX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[CGSMCIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[ITEMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[TCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[PriceGroup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[PRICMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[PRCHSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[SELNGUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[KTACCTSR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[LASTGENSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ABCCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[Revalue_Inventory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[Tolerance_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[Purchase_Tax_Options]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[ITMPLNNNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[STTSTCLVLPRCNTG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[CNTRYORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[MINSHELF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[MINSHELF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[INCLUDEINDP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[LOTEXPWARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[LOTEXPWARNDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00101].[LASTGENLOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00101].[Lot_Split_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[UseQtyOverageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[UseQtyShortageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[QtyOverTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[QtyShortTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00101].[IVSCRVIX]'
GO
GRANT SELECT ON  [dbo].[IV00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV00101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV00101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV00101] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[IV00101] TO [rpt_warehouse manager]
GO
