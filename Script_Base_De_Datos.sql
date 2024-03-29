USE [master]
GO
/****** Object:  Database [CentroMedico_BACKUP]    Script Date: 17/03/2024 2:45:35 p. m. ******/
CREATE DATABASE [CentroMedico_BACKUP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CentroMedico_BACKUP_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2\MSSQL\DATA\CentroMedico_BACKUP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CentroMedico_BACKUP_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER2\MSSQL\DATA\CentroMedico_BACKUP.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CentroMedico_BACKUP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CentroMedico_BACKUP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ARITHABORT OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET RECOVERY FULL 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET  MULTI_USER 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CentroMedico_BACKUP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CentroMedico_BACKUP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CentroMedico_BACKUP', N'ON'
GO
ALTER DATABASE [CentroMedico_BACKUP] SET QUERY_STORE = OFF
GO
USE [CentroMedico_BACKUP]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[id_cita] [int] IDENTITY(1,1) NOT NULL,
	[id_paciente] [int] NULL,
	[id_medico] [int] NULL,
	[fecha] [date] NULL,
	[motivo_cita] [varchar](255) NULL,
	[detalles_paciente] [varchar](255) NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[id_cita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[id_auditoria] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[fecha] [date] NULL,
	[view_action] [varchar](255) NULL,
	[accion] [varchar](255) NULL,
 CONSTRAINT [PK_Auditoria] PRIMARY KEY CLUSTERED 
(
	[id_auditoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[id_especialidad] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[especialidad] [varchar](15) NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[id_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id_persona] [int] IDENTITY(0,1) NOT NULL,
	[nom_completo] [varchar](70) NULL,
	[num_documento] [varchar](10) NULL,
	[genero] [varchar](10) NULL,
	[correo] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[telefono] [varchar](10) NULL,
	[num_seguro] [varchar](11) NULL,
	[contraseña] [varchar](50) NULL,
	[id_pregunta_seg] [int] NULL,
	[respuesta_preg] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreguntaSeguridad]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreguntaSeguridad](
	[id_pregunta] [int] IDENTITY(1,1) NOT NULL,
	[pregunta] [varchar](50) NULL,
 CONSTRAINT [PK_PreguntaSeguridad] PRIMARY KEY CLUSTERED 
(
	[id_pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 17/03/2024 2:45:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[rol_persona] [varchar](15) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Medico] FOREIGN KEY([id_medico])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Medico]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Paciente] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Paciente]
GO
ALTER TABLE [dbo].[Auditoria]  WITH CHECK ADD  CONSTRAINT [FK_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Auditoria] CHECK CONSTRAINT [FK_User]
GO
ALTER TABLE [dbo].[Especialidad]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Especialidad] CHECK CONSTRAINT [FK_Medico_Persona]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Seguridad] FOREIGN KEY([id_pregunta_seg])
REFERENCES [dbo].[PreguntaSeguridad] ([id_pregunta])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Pregunta_Seguridad]
GO
ALTER TABLE [dbo].[Rol]  WITH CHECK ADD  CONSTRAINT [FK_Persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Persona] ([id_persona])
GO
ALTER TABLE [dbo].[Rol] CHECK CONSTRAINT [FK_Persona]
GO
USE [master]
GO
ALTER DATABASE [CentroMedico_BACKUP] SET  READ_WRITE 
GO
