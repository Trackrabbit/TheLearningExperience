CREATE TABLE [dbo].[HREMP662]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPARTMENTCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HREMP662] ADD CONSTRAINT [CK__HREMP662__DATE1__1C33651C] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[HREMP662] ADD CONSTRAINT [PKHREMP662] PRIMARY KEY CLUSTERED  ([EMPID_I], [DATE1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP662].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HREMP662].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP662].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP662].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP662].[DEPARTMENTCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP662].[POSITIONCODE_I]'
GO
GRANT SELECT ON  [dbo].[HREMP662] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HREMP662] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HREMP662] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HREMP662] TO [DYNGRP]
GO
