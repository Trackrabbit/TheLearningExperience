CREATE TABLE [dbo].[SVC06301]
(
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[Status] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__ENDTIM__24B338F0] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__STRTTI__269B8162] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__TIME1__278FA59B] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__DATE1__22CAF07E] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__ENDDAT__23BF14B7] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [CK__SVC06301__STRTDA__25A75D29] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06301] ADD CONSTRAINT [PKSVC06301] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC06301] ON [dbo].[SVC06301] ([DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06301].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06301].[ENDTIME]'
GO
GRANT SELECT ON  [dbo].[SVC06301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06301] TO [DYNGRP]
GO
