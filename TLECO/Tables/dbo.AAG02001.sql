CREATE TABLE [dbo].[AAG02001]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    trigger [dbo].[aagUpdateBrowseTypeFor2001] on [dbo].[AAG02001] FOR UPDATE AS BEGIN  SET NOCOUNT ON  DECLARE @aaTrxDimID INT,  @aaAcctClassID INT,  @aaTrxDimCodeID INT  SELECT  @aaTrxDimID =0,  @aaTrxDimCodeID =0,  @aaAcctClassID = NULL    SELECT @aaTrxDimID = aaTrxDimID FROM inserted  SELECT @aaTrxDimCodeID = aaTrxDimCodeID FROM inserted   UPDATE AAG20001 set aaBrowseType = 2 FROM AAG20001 WHERE EXISTS ( SELECT 1 FROM AAG20003 B WITH(NOLOCK)  WHERE  B.aaSubLedgerHdrID=AAG20001.aaSubLedgerHdrID AND B.aaTrxDimID = @aaTrxDimID AND B.aaTrxCodeID = @aaTrxDimCodeID)   UPDATE AAG10001 set aaBrowseType = 2 FROM AAG10001 WHERE EXISTS ( SELECT 1 FROM AAG10003 B WITH(NOLOCK)  WHERE  B.aaGLWorkHdrID=AAG10001.aaGLWorkHdrID AND B.aaTrxDimID = @aaTrxDimID AND B.aaTrxCodeID = @aaTrxDimCodeID)   SET NOCOUNT OFF END    
GO
ALTER TABLE [dbo].[AAG02001] ADD CONSTRAINT [PKAAG02001] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeID], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02001].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02001].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG02001].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[AAG02001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG02001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG02001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG02001] TO [DYNGRP]
GO
