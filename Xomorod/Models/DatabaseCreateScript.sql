/************************************************************
 * Code formatted by SoftTree SQL Assistant © v6.3.153
 * Time: 04/11/2015 01:08:32 ب.ظ
 ************************************************************/

USE [master]
GO
/****** Object:  Database [Xomorod]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  NAME
                FROM    sys.databases
                WHERE   NAME = N'Xomorod' ) 
    BEGIN
        CREATE DATABASE [Xomorod] ON PRIMARY(
        NAME = N'Xomorod',
        FILENAME = 
        N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Xomorod.ndf',
        SIZE = 2304KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024KB
    ) LOG ON 
    (
        NAME = N'Xomorod_log',
        FILENAME = 
        N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Xomorod_log.ldf',
        SIZE = 768KB,
        MAXSIZE = 2048GB,
        FILEGROWTH = 10%
    )
    END
GO
ALTER DATABASE [Xomorod] 
SET COMPATIBILITY_LEVEL = 100
GO
IF ( 1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled') ) 
    BEGIN
        EXEC [Xomorod].[dbo].[sp_fulltext_database] @action = 'enable'
    END
GO
ALTER DATABASE [Xomorod] 
SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Xomorod] 
SET ANSI_NULLS OFF
GO
ALTER DATABASE [Xomorod] 
SET ANSI_PADDING OFF
GO
ALTER DATABASE [Xomorod] 
SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Xomorod] 
SET ARITHABORT OFF
GO
ALTER DATABASE [Xomorod] 
SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Xomorod] 
SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Xomorod] 
SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Xomorod] 
SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Xomorod] 
SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Xomorod] 
SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [Xomorod] 
SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Xomorod] 
SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Xomorod] 
SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Xomorod] 
SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Xomorod] 
SET ENABLE_BROKER
GO
ALTER DATABASE [Xomorod] 
SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Xomorod] 
SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Xomorod] 
SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Xomorod] 
SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Xomorod] 
SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Xomorod] 
SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Xomorod] 
SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Xomorod] 
SET READ_WRITE
GO
ALTER DATABASE [Xomorod] 
SET RECOVERY FULL
GO
ALTER DATABASE [Xomorod] 
SET MULTI_USER
GO
ALTER DATABASE [Xomorod] 
SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Xomorod] 
SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Xomorod', N'ON'
GO
USE [Xomorod]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/04/2015 13:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS ( SELECT  *
                FROM    sys.objects
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[Users]')
                        AND TYPE IN ( N'U' ) ) 
    BEGIN
        CREATE TABLE [dbo].[Users]
            (
              [Id] [int] IDENTITY(1, 1)
                         NOT NULL ,
              [FullName] [nvarchar](50) NOT NULL ,
              [Username] [varchar](50) NOT NULL ,
              [Password] [nvarchar](MAX) NOT NULL ,
              [ModifyDate] [date] NOT NULL ,
              PRIMARY KEY CLUSTERED ( [Id] ASC )
                WITH ( PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
                       IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                       ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
            )
        ON  [PRIMARY]
    END
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/04/2015 13:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS ( SELECT  *
                FROM    sys.objects
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[Roles]')
                        AND TYPE IN ( N'U' ) ) 
    BEGIN
        CREATE TABLE [dbo].[Roles]
            (
              [Id] [int] IDENTITY(1, 1)
                         NOT NULL ,
              [Role] [nvarchar](100) NOT NULL ,
              [Type] [nvarchar](50) NOT NULL ,
              [ParentRoleId] [int] NULL ,
              PRIMARY KEY CLUSTERED ( [Id] ASC )
                WITH ( PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
                       IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                       ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
            )
        ON  [PRIMARY]
    END
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 11/04/2015 13:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS ( SELECT  *
                FROM    sys.objects
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[Portfolios]')
                        AND TYPE IN ( N'U' ) ) 
    BEGIN
        CREATE TABLE [dbo].[Portfolios]
            (
              [Id] [int] IDENTITY(1, 1)
                         NOT NULL ,
              [ProjectName] [nvarchar](50) NOT NULL ,
              [ProjectUrl] [nvarchar](MAX) NULL ,
              [Category] [nvarchar](50) NOT NULL ,
              [ImageSrc] [nvarchar](MAX) NULL ,
              [Description] [nvarchar](MAX) NULL ,
              [OpenSource] [bit] NOT NULL ,
              [ModifyDate] [date] NOT NULL ,
              PRIMARY KEY CLUSTERED ( [Id] ASC )
                WITH ( PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
                       IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                       ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
            )
        ON  [PRIMARY]
    END
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 11/04/2015 13:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS ( SELECT  *
                FROM    sys.objects
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[LogHistory]')
                        AND TYPE IN ( N'U' ) ) 
    BEGIN
        CREATE TABLE [dbo].[LogHistory]
            (
              [RunDate] [datetime] NOT NULL ,
              [UserId] [int] NULL ,
              [Success] [bit] NOT NULL ,
              [TryUsername] [nvarchar](MAX) NULL ,
              [TryPassword] [nvarchar](MAX) NULL ,
              [LoginOrLogout] [bit] NOT NULL
            )
        ON  [PRIMARY]
    END
GO
/****** Object:  Default [DF__Users__ModifyDat__09DE7BCC]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__Users__ModifyDat__09DE7BCC]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[Users]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__Users__ModifyDat__09DE7BCC]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[Users] ADD DEFAULT(GETDATE()) FOR [ModifyDate]
            END
    END
GO
/****** Object:  Default [DF__Portfolio__OpenS__0AD2A005]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__Portfolio__OpenS__0AD2A005]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[Portfolios]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__Portfolio__OpenS__0AD2A005]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[Portfolios] ADD DEFAULT((1)) FOR [OpenSource]
            END
    END
GO
/****** Object:  Default [DF__Portfolio__Modif__0BC6C43E]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__Portfolio__Modif__0BC6C43E]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[Portfolios]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__Portfolio__Modif__0BC6C43E]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[Portfolios] ADD DEFAULT(GETDATE()) FOR [ModifyDate]
            END
    END
GO
/****** Object:  Default [DF__LogHistor__RunDa__0CBAE877]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__LogHistor__RunDa__0CBAE877]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__LogHistor__RunDa__0CBAE877]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[LogHistory] ADD DEFAULT(GETDATE()) FOR [RunDate]
            END
    END
GO
/****** Object:  Default [DF__LogHistor__Succe__0DAF0CB0]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__LogHistor__Succe__0DAF0CB0]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__LogHistor__Succe__0DAF0CB0]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[LogHistory] ADD DEFAULT((1)) FOR [Success]
            END
    END
GO
/****** Object:  Default [DF__LogHistor__Login__0EA330E9]    Script Date: 11/04/2015 13:08:24 ******/
IF NOT EXISTS ( SELECT  *
                FROM    sys.default_constraints
                WHERE   OBJECT_ID = OBJECT_ID(N'[dbo].[DF__LogHistor__Login__0EA330E9]')
                        AND parent_object_id = OBJECT_ID(N'[dbo].[LogHistory]') ) 
    BEGIN
        IF NOT EXISTS ( SELECT  *
                        FROM    dbo.sysobjects
                        WHERE   id = OBJECT_ID(N'[DF__LogHistor__Login__0EA330E9]')
                                AND TYPE = 'D' ) 
            BEGIN
                ALTER TABLE [dbo].[LogHistory] ADD DEFAULT((1)) FOR [LoginOrLogout]
            END
    END
GO
