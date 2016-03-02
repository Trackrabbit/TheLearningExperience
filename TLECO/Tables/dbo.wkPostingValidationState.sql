CREATE TABLE [dbo].[wkPostingValidationState]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLBCHVAL] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkPostingValidationState] ADD CONSTRAINT [PKwkPostingValidationState] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[wkPostingValidationState].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[wkPostingValidationState].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[wkPostingValidationState].[GLBCHVAL]'
GO
GRANT SELECT ON  [dbo].[wkPostingValidationState] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[wkPostingValidationState] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[wkPostingValidationState] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[wkPostingValidationState] TO [DYNGRP]
GO
