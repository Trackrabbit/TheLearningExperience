CREATE TABLE [dbo].[RM00102]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[GPSFOINTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEGRATIONSOURCE] [smallint] NOT NULL,
[INTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipToName] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM00102__DEX_ROW__74E42A3D] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[taCustomerAddressInsert] on [dbo].[RM00102] for insert, update as declare @iStatus  int declare @MASTERDB char(15) declare @CUSTNMBR char(15) declare @ADRSCODE char(15) declare @SLPRSNID char(15) declare @UPSZONE char(3)  declare @SHIPMTHD char(15) declare @TAXSCHID char(15) declare @CNTCPRSN char(31) declare @ADDRESS1 char(31) declare @ADDRESS2 char(31) declare @ADDRESS3 char(31) declare @COUNTRY char(21) declare @CITY char(31) declare @STATE char(29) declare @ZIP char(11) declare @PHONE1 char(21) declare @PHONE2 char(21) declare @PHONE3 char(21) declare @FAX char(21) declare @MODIFDT datetime declare @CREATDDT datetime declare @GPSFOINTEGRATIONID char(31)		 declare @INTEGRATIONSOURCE smallint		 declare @INTEGRATIONID char(31)			 declare @CCode char(6)				 declare @DECLID char(15)			 declare @LOCNCODE char(10)			 declare @SALSTERR char(15)			 declare @USERDEF1 char(20)			 declare @USERDEF2 char(20)			 select  @MASTERDB = DB_Name(), @CUSTNMBR = CUSTNMBR, @ADRSCODE = ADRSCODE, @SLPRSNID = SLPRSNID, @UPSZONE = UPSZONE, @SHIPMTHD = SHIPMTHD, @TAXSCHID = TAXSCHID, @CNTCPRSN = CNTCPRSN, @ADDRESS1 = ADDRESS1, @ADDRESS2 = ADDRESS2, @ADDRESS3 = ADDRESS3, @COUNTRY = COUNTRY, @CITY = CITY, @STATE = STATE, @ZIP = ZIP, @PHONE1 = PHONE1, @PHONE2 = PHONE2, @PHONE3 = PHONE3, @FAX = FAX, @MODIFDT = MODIFDT, @CREATDDT = CREATDDT, @GPSFOINTEGRATIONID = GPSFOINTEGRATIONID,	 @INTEGRATIONSOURCE = INTEGRATIONSOURCE,		 @INTEGRATIONID = INTEGRATIONID,			 @CCode = CCode,					 @DECLID = DECLID,				 @LOCNCODE = LOCNCODE,				 @SALSTERR = SALSTERR,				 @USERDEF1 = USERDEF1,				 @USERDEF2 = USERDEF2				 from  inserted exec @iStatus = DYNAMICS.dbo.TA_ParentInsertAddressRM @MASTERDB, @CUSTNMBR, @ADRSCODE, @SLPRSNID, @UPSZONE, @SHIPMTHD, @TAXSCHID, @CNTCPRSN, @ADDRESS1, @ADDRESS2, @ADDRESS3, @COUNTRY, @CITY, @STATE, @ZIP, @PHONE1, @PHONE2, @PHONE3, @FAX,  @MODIFDT, @CREATDDT, @GPSFOINTEGRATIONID,			 @INTEGRATIONSOURCE,			 @INTEGRATIONID,				 @CCode,					 @DECLID,				 @LOCNCODE,				 @SALSTERR,				 @USERDEF1,				 @USERDEF2				 
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_Cust_Ext_U] ON [dbo].[RM00102]  FOR INSERT AS declare @rows int declare @allowSOP tinyint declare @address_option smallint   select @rows = @@rowcount if @rows = 0   return if not exists(select * from SVC00998) return  select @allowSOP = SVC_Allow_Contract_0_SOP,  @address_option = SVC_Address_Option from SVC00998 select @allowSOP = isnull(@allowSOP,1) select @address_option = isnull(@address_option,2)  if @rows <> (select count(*)  from inserted i, SVC00950 s  where i.CUSTNMBR = s.CUSTNMBR and  i.ADRSCODE = s.ADRSCODE)  if @@error <> 0  begin  raiserror ('error in tr_SVC_Cust_Ext_U', 16, 1)  rollback tran end begin  insert SVC00950   select distinct CUSTNMBR,ADRSCODE,  0,0,0,0,0,0,0,  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',   '01/01/1900 00:00:00',  ' ',' ',' ',' ',' ' ,'',@address_option,' ',0,0,1,@allowSOP,  0,0,0,0,0,0,0,  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',  '01/01/1900 00:00:00','01/01/1900 00:00:00',0,0  from inserted i  where not exists  (select *  from SVC00950 s  where i.CUSTNMBR = s.CUSTNMBR and  i.ADRSCODE = s.ADRSCODE)  if @@error <> 0   begin  raiserror ('error in tr_SVC_Cust_Ext_U', 16, 1)  rollback tran  end end return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_RM00102_D] ON [dbo].[RM00102]  FOR DELETE  AS  declare @Customer char(15), @Address char(15)  if not exists(select * from SVC00998) return  select @Customer = CUSTNMBR, @Address = ADRSCODE from deleted IF exists(select * from SVC00950 where CUSTNMBR = @Customer and ADRSCODE = @Address)  delete from SVC00950 where  CUSTNMBR = @Customer and ADRSCODE = @Address  return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER  [dbo].[zDT_RM00102C] ON [dbo].[RM00102] AFTER INSERT AS set nocount on BEGIN UPDATE dbo.RM00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00101, inserted WHERE RM00101.CUSTNMBR = inserted.CUSTNMBR END set nocount off   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER  [dbo].[zDT_RM00102D] ON [dbo].[RM00102] AFTER DELETE AS set nocount on BEGIN UPDATE dbo.RM00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00101, deleted WHERE RM00101.CUSTNMBR = deleted.CUSTNMBR END set nocount off   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM00102U] ON [dbo].[RM00102] AFTER UPDATE AS  set nocount on BEGIN  UPDATE dbo.RM00102 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00102, inserted WHERE RM00102.CUSTNMBR = inserted.CUSTNMBR AND RM00102.ADRSCODE = inserted.ADRSCODE UPDATE dbo.RM00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00101, inserted WHERE RM00101.CUSTNMBR = inserted.CUSTNMBR END set nocount off    
GO
ALTER TABLE [dbo].[RM00102] ADD CONSTRAINT [CK__RM00102__CREATDD__5AC46587] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM00102] ADD CONSTRAINT [CK__RM00102__MODIFDT__5BB889C0] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[RM00102] ADD CONSTRAINT [PKRM00102] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [ADRSCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00102] ON [dbo].[RM00102] ([CUSTNMBR], [CITY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6RM00102] ON [dbo].[RM00102] ([CUSTNMBR], [SALSTERR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM00102] ON [dbo].[RM00102] ([CUSTNMBR], [SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00102] ON [dbo].[RM00102] ([CUSTNMBR], [STATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM00102] ON [dbo].[RM00102] ([CUSTNMBR], [ZIP], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00102].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00102].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[GPSFOINTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00102].[INTEGRATIONSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[INTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00102].[ShipToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00102].[Print_Phone_NumberGB]'
GO
GRANT SELECT ON  [dbo].[RM00102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00102] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00102] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00102] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00102] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00102] TO [RAPIDGRP]
GO
