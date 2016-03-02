CREATE TABLE [dbo].[UPR30604]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[EXMFRFED] [tinyint] NOT NULL,
[FDFLGSTS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MarriedWithholdAsSingle] [tinyint] NOT NULL,
[FEDEXMPT] [smallint] NOT NULL,
[ADFDWHDG] [numeric] (19, 5) NOT NULL,
[LastNameDiffOnSSCard] [tinyint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[EmployeeSignature] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[SupervisorADLogin] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[uprWF_UPR30604UpdateTrigger]  on [dbo].[UPR30604] FOR UPDATE  as  BEGIN  DECLARE @EmployeeID varchar(15),  @ExemptFromFederal tinyint,  @WorkflowStatus smallint,  @FederalFilingStatus varchar(7),  @NumberOfFedExemptions smallint,  @AdditionalWithholding numeric(19,5),  @MarriedWithholdAsSingle tinyint   SELECT  @EmployeeID = EMPLOYID,  @ExemptFromFederal=EXMFRFED,  @FederalFilingStatus=FDFLGSTS,  @NumberOfFedExemptions=FEDEXMPT,  @AdditionalWithholding=ADFDWHDG,  @MarriedWithholdAsSingle=MarriedWithholdAsSingle,  @WorkflowStatus=Workflow_Status   FROM INSERTED   IF @WorkflowStatus = 6  or @WorkflowStatus = 3    UPDATE UPR00300 SET   EXMFRFED = @ExemptFromFederal,  FDFLGSTS=@FederalFilingStatus,  FEDEXMPT=@NumberOfFedExemptions,  ADFDWHDG=@AdditionalWithholding,  MarriedWithholdAsSingle=@MarriedWithholdAsSingle   WHERE EMPLOYID = @EmployeeID END     
GO
ALTER TABLE [dbo].[UPR30604] ADD CONSTRAINT [CK__UPR30604__CREATD__6BA2DA55] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30604] ADD CONSTRAINT [CK__UPR30604__MODIFD__6C96FE8E] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[UPR30604] ADD CONSTRAINT [PKUPR30604] PRIMARY KEY CLUSTERED  ([EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30604].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[EXMFRFED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30604].[FDFLGSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[MarriedWithholdAsSingle]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[FEDEXMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30604].[ADFDWHDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[LastNameDiffOnSSCard]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30604].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30604].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30604].[EmployeeSignature]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30604].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30604].[SupervisorADLogin]'
GO
GRANT SELECT ON  [dbo].[UPR30604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30604] TO [DYNGRP]
GO
