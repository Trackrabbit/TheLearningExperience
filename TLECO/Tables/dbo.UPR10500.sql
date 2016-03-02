CREATE TABLE [dbo].[UPR10500]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[SupervisorADLogin] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[uprWF_UPR10500UpdateTrigger] ON [dbo].[UPR10500]  FOR UPDATE  AS declare   @EmpID char(15),  @PaySched char(15),  @Year1 int,  @PeriodID int,  @Error_State int if update(Workflow_Status) and (select Workflow_Status from inserted)=6 or (select Workflow_Status from inserted)=3 begin  select @EmpID = (select EMPLOYID from inserted)  select @PaySched = (select Pay_Schedule from inserted)  select @Year1 = (select YEAR1 from inserted)  select @PeriodID = (select PERIODID from inserted)   exec dbo.uprCreateTrxDatafromTimecards @EmpID, @PaySched, @Year1, @PeriodID, @Error_State end   
GO
ALTER TABLE [dbo].[UPR10500] ADD CONSTRAINT [PKUPR10500] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Pay_Schedule], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10500] ON [dbo].[UPR10500] ([Pay_Schedule], [YEAR1], [PERIODID], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10500].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10500].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10500].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10500].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10500].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10500].[SupervisorADLogin]'
GO
GRANT SELECT ON  [dbo].[UPR10500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10500] TO [DYNGRP]
GO
