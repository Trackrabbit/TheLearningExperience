CREATE TABLE [dbo].[RM00301]
(
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNFN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPRSNSMN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPRSNSLN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[STDCPRCT] [smallint] NOT NULL,
[COMAPPTO] [smallint] NOT NULL,
[COSTTODT] [numeric] (19, 5) NOT NULL,
[CSTLSTYR] [numeric] (19, 5) NOT NULL,
[TTLCOMTD] [numeric] (19, 5) NOT NULL,
[TTLCOMLY] [numeric] (19, 5) NOT NULL,
[COMSLTDT] [numeric] (19, 5) NOT NULL,
[COMSLLYR] [numeric] (19, 5) NOT NULL,
[NCOMSLTD] [numeric] (19, 5) NOT NULL,
[NCOMSLYR] [numeric] (19, 5) NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[COMMDEST] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM00301__DEX_ROW__0A14514D] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[eConnect_WSSalespersonRM00301_DeleteTrigger] on [dbo].[RM00301] for  delete  as 
declare @required char(50),@DRI int,  @SLPRSNID varchar(50) declare eConnect_WSSalespersonRM00301_DeleteTrigger CURSOR for select convert(varchar(50),SLPRSNID,121) from  deleted a
 set nocount on
OPEN eConnect_WSSalespersonRM00301_DeleteTrigger
FETCH NEXT FROM eConnect_WSSalespersonRM00301_DeleteTrigger INTO @SLPRSNID
WHILE (@@FETCH_STATUS <> -1)
begin
if (not exists (select 1 from eConnectOutTemp (nolock)  where  DOCTYPE = 'WSSalesperson' and  INDEX1= @SLPRSNID))
begin
select @DRI = 0 delete eConnect_Out from eConnect_Out b (updlock) where (b.DOCTYPE = 'WSSalesperson' and ACTION = 3 and INDEX1= @SLPRSNID)

insert into eConnect_Out(DOCTYPE,TABLENAME,DEX_ROW_ID,INDEX1,INDEX2,INDEX3,INDEX4,INDEX5,INDEX6,INDEX7,INDEX8,INDEX9,INDEX10,  INDEX11,INDEX12,INDEX13,INDEX14,INDEX15,ACTION) select 
'WSSalesperson',
'RM00301',
 @DRI,
@SLPRSNID,
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
3
end
FETCH NEXT FROM eConnect_WSSalespersonRM00301_DeleteTrigger INTO @SLPRSNID
end
DEALLOCATE eConnect_WSSalespersonRM00301_DeleteTrigger

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM00301U] ON [dbo].[RM00301] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.RM00301 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00301, inserted WHERE RM00301.SLPRSNID = inserted.SLPRSNID END set nocount off    
GO
ALTER TABLE [dbo].[RM00301] ADD CONSTRAINT [CK__RM00301__CREATDD__729BEF18] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM00301] ADD CONSTRAINT [CK__RM00301__MODIFDT__73901351] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[RM00301] ADD CONSTRAINT [PKRM00301] PRIMARY KEY NONCLUSTERED  ([SLPRSNID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00301] ON [dbo].[RM00301] ([SALSTERR], [SLPRSNID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00301] ON [dbo].[RM00301] ([SPRSNSLN], [SLPRSNFN], [SPRSNSMN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[SLPRSNFN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[SPRSNSMN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[SPRSNSLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00301].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[STDCPRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[COMAPPTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[COSTTODT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[CSTLSTYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[TTLCOMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[TTLCOMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[COMSLTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[COMSLLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[NCOMSLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[NCOMSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00301].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00301].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00301].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00301].[COMMDEST]'
GO
GRANT SELECT ON  [dbo].[RM00301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00301] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00301] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00301] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00301] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[RM00301] TO [rpt_warehouse manager]
GO
