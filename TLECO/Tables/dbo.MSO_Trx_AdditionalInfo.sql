CREATE TABLE [dbo].[MSO_Trx_AdditionalInfo]
(
[MSO_InstanceGUID] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[MSO_XMLText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_Trx_AdditionalInfo] ADD CONSTRAINT [PKMSO_Trx_AdditionalInfo] PRIMARY KEY NONCLUSTERED  ([MSO_InstanceGUID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_Trx_AdditionalInfo].[MSO_InstanceGUID]'
GO
GRANT SELECT ON  [dbo].[MSO_Trx_AdditionalInfo] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_Trx_AdditionalInfo] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_Trx_AdditionalInfo] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_Trx_AdditionalInfo] TO [DYNGRP]
GO
