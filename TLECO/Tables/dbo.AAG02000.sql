CREATE TABLE [dbo].[AAG02000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[aaView] [tinyint] NOT NULL,
[aaEdit] [tinyint] NOT NULL,
[aaDistribute] [tinyint] NOT NULL,
[aaAdjust] [tinyint] NOT NULL,
[aaBudgetView] [tinyint] NOT NULL,
[aaBudgetAssign] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create TRIGGER [dbo].[aagUpdateBrowseTypeFor2000] ON [dbo].[AAG02000] FOR UPDATE AS BEGIN  SET NOCOUNT ON  DECLARE @aaTrxDimID INT,  @aaAcctClassID INT,  @aaTrxDimCodeID INT  SELECT  @aaTrxDimID =0,  @aaTrxDimCodeID =0,  @aaAcctClassID = NULL    SELECT @aaTrxDimID = aaTrxDimID FROM inserted  SELECT @aaTrxDimCodeID = aaTrxDimCodeID FROM inserted   UPDATE AAG20001 set aaBrowseType = 2 FROM AAG20001 WHERE EXISTS ( SELECT 1 FROM AAG20003 B WITH(NOLOCK)  WHERE  B.aaSubLedgerHdrID=AAG20001.aaSubLedgerHdrID AND B.aaTrxDimID = @aaTrxDimID AND B.aaTrxCodeID = @aaTrxDimCodeID)   UPDATE AAG10001 set aaBrowseType = 2 FROM AAG10001 WHERE EXISTS ( SELECT 1 FROM AAG10003 B WITH(NOLOCK)  WHERE  B.aaGLWorkHdrID=AAG10001.aaGLWorkHdrID AND B.aaTrxDimID = @aaTrxDimID AND B.aaTrxCodeID = @aaTrxDimCodeID)   SET NOCOUNT OFF END    
GO
ALTER TABLE [dbo].[AAG02000] ADD CONSTRAINT [PKAAG02000] PRIMARY KEY CLUSTERED  ([USERID], [aaTrxDimID], [aaTrxDimCodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG02000] ON [dbo].[AAG02000] ([aaTrxDimID], [aaTrxDimCodeID], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG02000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaView]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaEdit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaDistribute]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaAdjust]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaBudgetView]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02000].[aaBudgetAssign]'
GO
GRANT SELECT ON  [dbo].[AAG02000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG02000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG02000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG02000] TO [DYNGRP]
GO
