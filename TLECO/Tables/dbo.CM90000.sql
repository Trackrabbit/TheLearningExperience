CREATE TABLE [dbo].[CM90000]
(
[FILENAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFileStatus] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIME1] [datetime] NOT NULL,
[FilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFileType] [smallint] NOT NULL,
[EFTTransmissionType] [smallint] NOT NULL,
[EFTFileGeneratedDate] [datetime] NOT NULL,
[EFTFileGeneratedUserID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFileSentDate] [datetime] NOT NULL,
[EFTFileSentUserID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM90000] ADD CONSTRAINT [CK__CM90000__TIME1__681373AD] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM90000] ADD CONSTRAINT [CK__CM90000__EFTFile__662B2B3B] CHECK ((datepart(hour,[EFTFileGeneratedDate])=(0) AND datepart(minute,[EFTFileGeneratedDate])=(0) AND datepart(second,[EFTFileGeneratedDate])=(0) AND datepart(millisecond,[EFTFileGeneratedDate])=(0)))
GO
ALTER TABLE [dbo].[CM90000] ADD CONSTRAINT [CK__CM90000__EFTFile__671F4F74] CHECK ((datepart(hour,[EFTFileSentDate])=(0) AND datepart(minute,[EFTFileSentDate])=(0) AND datepart(second,[EFTFileSentDate])=(0) AND datepart(millisecond,[EFTFileSentDate])=(0)))
GO
ALTER TABLE [dbo].[CM90000] ADD CONSTRAINT [PKCM90000] PRIMARY KEY NONCLUSTERED  ([EFTFileStatus], [EFTFileGeneratedDate], [FILENAME], [EFTFileType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM90000] ON [dbo].[CM90000] ([EFTFileStatus], [CHEKBKID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM90000] ON [dbo].[CM90000] ([EFTFileStatus], [EFTFileType], [EFTFileGeneratedDate], [FILENAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90000].[FILENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM90000].[EFTFileStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90000].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM90000].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90000].[FilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM90000].[EFTFileType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM90000].[EFTTransmissionType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM90000].[EFTFileGeneratedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90000].[EFTFileGeneratedUserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM90000].[EFTFileSentDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM90000].[EFTFileSentUserID]'
GO
GRANT SELECT ON  [dbo].[CM90000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM90000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM90000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM90000] TO [DYNGRP]
GO
