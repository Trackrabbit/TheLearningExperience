CREATE TABLE [dbo].[POP10306]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_List01] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_List02] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_List03] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_List04] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_List05] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text01] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text02] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text03] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text04] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text05] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text06] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text07] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text08] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text09] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Text10] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[User_Defined_Date01] [datetime] NOT NULL,
[User_Defined_Date02] [datetime] NOT NULL,
[User_Defined_Date03] [datetime] NOT NULL,
[User_Defined_Date04] [datetime] NOT NULL,
[User_Defined_Date05] [datetime] NOT NULL,
[User_Defined_Date06] [datetime] NOT NULL,
[User_Defined_Date07] [datetime] NOT NULL,
[User_Defined_Date08] [datetime] NOT NULL,
[User_Defined_Date09] [datetime] NOT NULL,
[User_Defined_Date10] [datetime] NOT NULL,
[User_Defined_Date11] [datetime] NOT NULL,
[User_Defined_Date12] [datetime] NOT NULL,
[User_Defined_Date13] [datetime] NOT NULL,
[User_Defined_Date14] [datetime] NOT NULL,
[User_Defined_Date15] [datetime] NOT NULL,
[User_Defined_Date16] [datetime] NOT NULL,
[User_Defined_Date17] [datetime] NOT NULL,
[User_Defined_Date18] [datetime] NOT NULL,
[User_Defined_Date19] [datetime] NOT NULL,
[User_Defined_Date20] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__44160A59] CHECK ((datepart(hour,[User_Defined_Date01])=(0) AND datepart(minute,[User_Defined_Date01])=(0) AND datepart(second,[User_Defined_Date01])=(0) AND datepart(millisecond,[User_Defined_Date01])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__450A2E92] CHECK ((datepart(hour,[User_Defined_Date02])=(0) AND datepart(minute,[User_Defined_Date02])=(0) AND datepart(second,[User_Defined_Date02])=(0) AND datepart(millisecond,[User_Defined_Date02])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__45FE52CB] CHECK ((datepart(hour,[User_Defined_Date03])=(0) AND datepart(minute,[User_Defined_Date03])=(0) AND datepart(second,[User_Defined_Date03])=(0) AND datepart(millisecond,[User_Defined_Date03])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__46F27704] CHECK ((datepart(hour,[User_Defined_Date04])=(0) AND datepart(minute,[User_Defined_Date04])=(0) AND datepart(second,[User_Defined_Date04])=(0) AND datepart(millisecond,[User_Defined_Date04])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__47E69B3D] CHECK ((datepart(hour,[User_Defined_Date05])=(0) AND datepart(minute,[User_Defined_Date05])=(0) AND datepart(second,[User_Defined_Date05])=(0) AND datepart(millisecond,[User_Defined_Date05])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__48DABF76] CHECK ((datepart(hour,[User_Defined_Date06])=(0) AND datepart(minute,[User_Defined_Date06])=(0) AND datepart(second,[User_Defined_Date06])=(0) AND datepart(millisecond,[User_Defined_Date06])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__49CEE3AF] CHECK ((datepart(hour,[User_Defined_Date07])=(0) AND datepart(minute,[User_Defined_Date07])=(0) AND datepart(second,[User_Defined_Date07])=(0) AND datepart(millisecond,[User_Defined_Date07])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4AC307E8] CHECK ((datepart(hour,[User_Defined_Date08])=(0) AND datepart(minute,[User_Defined_Date08])=(0) AND datepart(second,[User_Defined_Date08])=(0) AND datepart(millisecond,[User_Defined_Date08])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4BB72C21] CHECK ((datepart(hour,[User_Defined_Date09])=(0) AND datepart(minute,[User_Defined_Date09])=(0) AND datepart(second,[User_Defined_Date09])=(0) AND datepart(millisecond,[User_Defined_Date09])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4CAB505A] CHECK ((datepart(hour,[User_Defined_Date10])=(0) AND datepart(minute,[User_Defined_Date10])=(0) AND datepart(second,[User_Defined_Date10])=(0) AND datepart(millisecond,[User_Defined_Date10])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4D9F7493] CHECK ((datepart(hour,[User_Defined_Date11])=(0) AND datepart(minute,[User_Defined_Date11])=(0) AND datepart(second,[User_Defined_Date11])=(0) AND datepart(millisecond,[User_Defined_Date11])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4E9398CC] CHECK ((datepart(hour,[User_Defined_Date12])=(0) AND datepart(minute,[User_Defined_Date12])=(0) AND datepart(second,[User_Defined_Date12])=(0) AND datepart(millisecond,[User_Defined_Date12])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__4F87BD05] CHECK ((datepart(hour,[User_Defined_Date13])=(0) AND datepart(minute,[User_Defined_Date13])=(0) AND datepart(second,[User_Defined_Date13])=(0) AND datepart(millisecond,[User_Defined_Date13])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__507BE13E] CHECK ((datepart(hour,[User_Defined_Date14])=(0) AND datepart(minute,[User_Defined_Date14])=(0) AND datepart(second,[User_Defined_Date14])=(0) AND datepart(millisecond,[User_Defined_Date14])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__51700577] CHECK ((datepart(hour,[User_Defined_Date15])=(0) AND datepart(minute,[User_Defined_Date15])=(0) AND datepart(second,[User_Defined_Date15])=(0) AND datepart(millisecond,[User_Defined_Date15])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__526429B0] CHECK ((datepart(hour,[User_Defined_Date16])=(0) AND datepart(minute,[User_Defined_Date16])=(0) AND datepart(second,[User_Defined_Date16])=(0) AND datepart(millisecond,[User_Defined_Date16])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__53584DE9] CHECK ((datepart(hour,[User_Defined_Date17])=(0) AND datepart(minute,[User_Defined_Date17])=(0) AND datepart(second,[User_Defined_Date17])=(0) AND datepart(millisecond,[User_Defined_Date17])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__544C7222] CHECK ((datepart(hour,[User_Defined_Date18])=(0) AND datepart(minute,[User_Defined_Date18])=(0) AND datepart(second,[User_Defined_Date18])=(0) AND datepart(millisecond,[User_Defined_Date18])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__5540965B] CHECK ((datepart(hour,[User_Defined_Date19])=(0) AND datepart(minute,[User_Defined_Date19])=(0) AND datepart(second,[User_Defined_Date19])=(0) AND datepart(millisecond,[User_Defined_Date19])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [CK__POP10306__User_D__5634BA94] CHECK ((datepart(hour,[User_Defined_Date20])=(0) AND datepart(minute,[User_Defined_Date20])=(0) AND datepart(second,[User_Defined_Date20])=(0) AND datepart(millisecond,[User_Defined_Date20])=(0)))
GO
ALTER TABLE [dbo].[POP10306] ADD CONSTRAINT [PKPOP10306] PRIMARY KEY NONCLUSTERED  ([POPRCTNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_List01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_List02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_List03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_List04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_List05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text06]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text07]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text08]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text09]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10306].[User_Defined_Text10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date06]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date07]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date08]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date09]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10306].[User_Defined_Date20]'
GO
GRANT SELECT ON  [dbo].[POP10306] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10306] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10306] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10306] TO [DYNGRP]
GO
