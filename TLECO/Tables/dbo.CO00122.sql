CREATE TABLE [dbo].[CO00122]
(
[FieldsListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Group_ID] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[FromDictID] [smallint] NOT NULL,
[FromTable] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromTablePhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromField] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromFieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToDictID] [smallint] NOT NULL,
[ToTable] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToTablePhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToField] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ToFieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JoinType] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO00122] ADD CONSTRAINT [PKCO00122] PRIMARY KEY NONCLUSTERED  ([FieldsListGuid], [Group_ID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[FieldsListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00122].[Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00122].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00122].[FromDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[FromTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[FromTablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[FromField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[FromFieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00122].[ToDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[ToTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[ToTablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[ToField]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO00122].[ToFieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO00122].[JoinType]'
GO
GRANT SELECT ON  [dbo].[CO00122] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO00122] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO00122] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO00122] TO [DYNGRP]
GO
