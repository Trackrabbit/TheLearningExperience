CREATE TABLE [dbo].[SOP10107]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[Tracking_Number] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create TRIGGER [dbo].[NDS_TRKEML_AutoSendEmail]
 ON [dbo].[SOP10107]
 FOR INSERT, UPDATE
 AS 
 BEGIN 
  DECLARE @SOPNUMBE char(21), @SOPTYPE smallint, @TRKNMBR  char(165) 
  DECLARE trk_nos CURSOR FOR 
    SELECT SOPNUMBE, SOPTYPE, Tracking_Number FROM INSERTED 
  
  OPEN trk_nos 
  
  FETCH NEXT FROM trk_nos INTO @SOPNUMBE, @SOPTYPE, @TRKNMBR 
  WHILE (@@FETCH_STATUS = 0) 
  BEGIN
    EXEC NDS_EmailTracking @SOPNUMBE, @SOPTYPE, @TRKNMBR 
    
    FETCH NEXT FROM trk_nos INTO @SOPNUMBE, @SOPTYPE, @TRKNMBR 
  END
  
  CLOSE trk_nos 
  DEALLOCATE trk_nos 
 END  
GO
ALTER TABLE [dbo].[SOP10107] ADD CONSTRAINT [PKSOP10107] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE], [Tracking_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10107].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10107].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10107].[Tracking_Number]'
GO
GRANT SELECT ON  [dbo].[SOP10107] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10107] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10107] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10107] TO [DYNGRP]
GO
