CREATE TABLE [dbo].[IV40800]
(
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__IV40800__DEX_ROW__5DA268E0] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[SC_IV40800_Create_CRM_PRICELEVEL_CH]
ON  [dbo].[IV40800]
FOR INSERT
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV40800'
    SELECT @MapId = 'CRM_PRICELEVEL_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM INSERTED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV40800_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV40800_Track SET [Action] = 'CR', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV40800_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','CR',PRCLEVEL as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM INSERTED WHERE DEX_ROW_ID = @DEX_ROW_ID
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
CREATE TRIGGER [dbo].[SC_IV40800_Delete_CRM_PRICELEVEL_CH]
ON  [dbo].[IV40800]
FOR DELETE
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV40800'
    SELECT @MapId = 'CRM_PRICELEVEL_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM DELETED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV40800_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV40800_Track SET [Action] = 'DL', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV40800_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','DL',PRCLEVEL as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM DELETED WHERE DEX_ROW_ID = @DEX_ROW_ID
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
CREATE TRIGGER [dbo].[SC_IV40800_Update_CRM_PRICELEVEL_CH]
ON  [dbo].[IV40800]
FOR UPDATE
AS 
BEGIN
    SET NOCOUNT ON
    
    DECLARE @TableName char(50)
    DECLARE @MapId char(255)
	DECLARE @DEX_ROW_ID int

	SELECT @TableName = 'IV40800'
    SELECT @MapId = 'CRM_PRICELEVEL_CH'

	DECLARE TRIGGER_CURSOR CURSOR FOR 
	SELECT DEX_ROW_ID FROM INSERTED

	OPEN TRIGGER_CURSOR

	FETCH NEXT FROM TRIGGER_CURSOR 
	INTO @DEX_ROW_ID
    WHILE @@FETCH_STATUS = 0
	    BEGIN
            IF EXISTS(SELECT * FROM SC_IV40800_Track where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0)
            BEGIN
                UPDATE SC_IV40800_Track SET [Action] = 'UP', DateCreated = GetDate() where DEX_ROW_ID = @DEX_ROW_ID and MapId = @MapId and Processed = 0
            END
            ELSE
            BEGIN                              
                INSERT SC_IV40800_Track
			    SELECT @MapId,@DEX_ROW_ID,0,GetDate(),'1900-01-01 00:00:00.000','UP',PRCLEVEL as Index1,'' as Index2,'' as Index3,'' as Index4,'' as Index5,'' as Index6,'' as Index7,'' as Index8,'' as Index9,'' as Index10 FROM INSERTED WHERE DEX_ROW_ID = @DEX_ROW_ID
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
 CREATE TRIGGER [dbo].[zDT_IV40800U] ON [dbo].[IV40800] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.IV40800 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.IV40800, inserted WHERE IV40800.PRCLEVEL = inserted.PRCLEVEL END set nocount off    
GO
ALTER TABLE [dbo].[IV40800] ADD CONSTRAINT [CK__IV40800__CREATDD__1EC48A19] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[IV40800] ADD CONSTRAINT [CK__IV40800__MODIFDT__1FB8AE52] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[IV40800] ADD CONSTRAINT [PKIV40800] PRIMARY KEY NONCLUSTERED  ([PRCLEVEL]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV40800] ON [dbo].[IV40800] ([DSCRIPTN], [PRCLEVEL], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40800].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40800].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40800].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV40800].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV40800].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[IV40800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40800] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40800] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40800] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40800] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40800] TO [RAPIDGRP]
GO
