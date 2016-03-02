CREATE TABLE [dbo].[SOP10106]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDAT01] [datetime] NOT NULL,
[USRDAT02] [datetime] NOT NULL,
[USRTAB01] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTAB09] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTAB03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10106] ADD CONSTRAINT [CK__SOP10106__USRDAT__7231DAC4] CHECK ((datepart(hour,[USRDAT01])=(0) AND datepart(minute,[USRDAT01])=(0) AND datepart(second,[USRDAT01])=(0) AND datepart(millisecond,[USRDAT01])=(0)))
GO
ALTER TABLE [dbo].[SOP10106] ADD CONSTRAINT [CK__SOP10106__USRDAT__7325FEFD] CHECK ((datepart(hour,[USRDAT02])=(0) AND datepart(minute,[USRDAT02])=(0) AND datepart(second,[USRDAT02])=(0) AND datepart(millisecond,[USRDAT02])=(0)))
GO
ALTER TABLE [dbo].[SOP10106] ADD CONSTRAINT [PKSOP10106] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10106].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10106].[USRDAT01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10106].[USRDAT02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRTAB01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRTAB09]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRTAB03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[COMMENT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[COMMENT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[COMMENT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10106].[COMMENT_4]'
GO
GRANT SELECT ON  [dbo].[SOP10106] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10106] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10106] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10106] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10106] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10106] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10106] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10106] TO [RAPIDGRP]
GO
