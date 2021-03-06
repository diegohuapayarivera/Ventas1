CREATE TABLE [dbo].[ASIGNACION]
(
[IDASI] [int] NOT NULL IDENTITY(1, 1),
[IDPER] [int] NOT NULL,
[CARASI] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FECINCASI] [date] NOT NULL,
[FECFINASI] [date] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIGNACION] ADD CONSTRAINT [ASIGNACION_pk] PRIMARY KEY CLUSTERED  ([IDASI]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ASIGNACION] ADD CONSTRAINT [PADRE_PERSONA] FOREIGN KEY ([IDPER]) REFERENCES [dbo].[PERSONA] ([IDPER])
GO
