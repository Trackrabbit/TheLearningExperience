CREATE TABLE [dbo].[SVC00201]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[EQUIPID] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRDLINE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROBCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAUSECDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPRCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Note_Index_1] [numeric] (19, 5) NOT NULL,
[Note_Index_2] [numeric] (19, 5) NOT NULL,
[Note_Index_3] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Trigger [dbo].[tr_SVC_SVC00201_UD] On [dbo].[SVC00201] For UPDATE,DELETE As declare @Item char(31) declare @ProblemCode char(11) declare @RepairCode char(11) declare @Call char(11) declare @RecType int  select @Item = ITEMNMBR, @ProblemCode = PROBCDE, @RepairCode = RPRCODE,  @Call = CALLNBR, @RecType = SRVRECTYPE from deleted if @RecType = 3  BEGIN   if exists(select * from inserted)   BEGIN  select @Item = ITEMNMBR, @ProblemCode = PROBCDE, @RepairCode = RPRCODE,  @Call = CALLNBR, @RecType = SRVRECTYPE from inserted  if not exists(select * from SVC00225 where ITEMNMBR=@Item and PROBCDE=@ProblemCode and RPRCODE=@RepairCode)  begin  insert into SVC00225 SELECT  @Item, '', @ProblemCode, @RepairCode,0  update SVC00225 set NUMOFTRX = NUMOFTRX + 1   where ITEMNMBR=@Item and PROBCDE=@ProblemCode and RPRCODE=@RepairCode  end  END END    
GO
ALTER TABLE [dbo].[SVC00201] ADD CONSTRAINT [PKSVC00201] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00201] ON [dbo].[SVC00201] ([ITEMNMBR], [PROBCDE], [RPRCODE], [SRVRECTYPE], [CALLNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00201] ON [dbo].[SVC00201] ([PRDLINE], [PROBCDE], [RPRCODE], [SRVRECTYPE], [CALLNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00201].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00201].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00201].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[PRDLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[PROBCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[CAUSECDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00201].[RPRCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00201].[Note_Index_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00201].[Note_Index_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00201].[Note_Index_3]'
GO
GRANT SELECT ON  [dbo].[SVC00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00201] TO [DYNGRP]
GO
