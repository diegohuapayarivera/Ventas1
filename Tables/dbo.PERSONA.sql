CREATE TABLE [dbo].[PERSONA]
(
[IDPER] [int] NOT NULL IDENTITY(1, 1),
[NOMPER] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APEPER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SEXPER] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCPER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CELPER] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNIPER] [char] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CORPER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TIPPER] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERSONA] ADD CONSTRAINT [PERSONA_pk] PRIMARY KEY CLUSTERED  ([IDPER]) ON [PRIMARY]
GO
