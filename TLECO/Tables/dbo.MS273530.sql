CREATE TABLE [dbo].[MS273530]
(
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Doc_Type] [smallint] NOT NULL,
[MSO_COMMENT1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273530] ADD CONSTRAINT [PKMS273530] PRIMARY KEY NONCLUSTERED  ([MSO_Doc_Number], [MSO_Doc_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273530].[MSO_Doc_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_COMMENT3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_COMMENT4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273530].[MSO_COMMENT5]'
GO
GRANT SELECT ON  [dbo].[MS273530] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273530] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273530] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273530] TO [DYNGRP]
GO
