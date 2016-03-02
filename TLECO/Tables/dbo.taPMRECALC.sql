CREATE TABLE [dbo].[taPMRECALC]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[THECOUNT] [numeric] (19, 5) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[taPMRECALC] ADD CONSTRAINT [PKtaPMRECALC] PRIMARY KEY NONCLUSTERED  ([VENDORID]) ON [PRIMARY]
GO
GRANT REFERENCES ON  [dbo].[taPMRECALC] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[taPMRECALC] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[taPMRECALC] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[taPMRECALC] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[taPMRECALC] TO [DYNGRP]
GO