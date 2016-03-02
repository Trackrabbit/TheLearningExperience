CREATE TABLE [dbo].[SVC00951]
(
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[METERED] [tinyint] NOT NULL,
[RTRNABLE] [tinyint] NOT NULL,
[PRDLINE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WARRCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MTBF] [numeric] (19, 5) NOT NULL,
[MTBI] [numeric] (19, 5) NOT NULL,
[MTTR] [numeric] (19, 5) NOT NULL,
[RETCOST] [numeric] (19, 5) NOT NULL,
[SVC_PM_Allowed] [tinyint] NOT NULL,
[SVC_Contractible] [tinyint] NOT NULL,
[SLRWARR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Use_CurrentCost] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC00951_U] ON [dbo].[SVC00951]  FOR INSERT, UPDATE AS declare @old_returnable tinyint declare @old_metered tinyint declare @new_returnable tinyint declare @new_metered tinyint declare @item varchar(31) declare @datechange datetime if (select SVC_ItemDelta from SVC00998) = 1 BEGIN select @old_returnable = RTRNABLE,@old_metered = METERED from deleted select @item = ITEMNMBR, @new_returnable = RTRNABLE,@new_metered = METERED from inserted select @datechange = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00'  if not exists(select *  from SVC00501  where ITEMNMBR = @item) begin  insert SVC00501  ( ITEMNMBR,  ITEMTYPE,  ITEMDESC,  ITMSHNAM,  ITMTRKOP,  LISTPRCE,  RTRNABLE,  METERED,  SVC_Delta_Type,  MODIFDT)   select ITEMNMBR,ITEMTYPE,ITEMDESC,ITMSHNAM,ITMTRKOP,0,@new_returnable,@new_metered,1,  @datechange from IV00101 where ITEMNMBR = @item end ELSE begin  if @old_returnable <> @new_returnable or @old_metered <> @new_metered   begin  update SVC00501 set RTRNABLE = @new_returnable, METERED = @new_metered,SVC_Delta_Type = 2,MODIFDT = @datechange where ITEMNMBR = @item  end end END    
GO
ALTER TABLE [dbo].[SVC00951] ADD CONSTRAINT [PKSVC00951] PRIMARY KEY CLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00951] ON [dbo].[SVC00951] ([PRDLINE], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00951].[METERED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00951].[RTRNABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[PRDLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[WARRCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00951].[MTBF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00951].[MTBI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00951].[MTTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00951].[RETCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00951].[SVC_PM_Allowed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00951].[SVC_Contractible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[SLRWARR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00951].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00951].[SVC_Use_CurrentCost]'
GO
GRANT SELECT ON  [dbo].[SVC00951] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00951] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00951] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00951] TO [DYNGRP]
GO
