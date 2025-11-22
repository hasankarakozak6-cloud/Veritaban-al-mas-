--create database KitapSepetim
--use KitapSepetim
create table tblkitap(
KitapID int identity(1,1) not null primary key,
KitapAdi nvarchar(15) not null,
YazarAdi nvarchar(15) not null,
YorumMetni nvarchar(20) not null,
YorumPuaný nvarchar(20) not null,
BirimFiyati nvarchar(20) not null
)
create table tblSiparis(
SiparisID int identity(1,1) not null primary key,
SiparisTarihi datetime not null,
KargoTakipNo decimal(15) not null,
KargoFirma nvarchar(15) not null,
TeslimDurumu nvarchar(20) not null,
Adet decimal(20) not null,
ToplamTutar decimal(20) not null,
KampanyaKodu decimal(25) not null,
KampanyaÝndirim nvarchar(15) not null,
KitapID int not null foreign key references tblkitap(KitapID)
)
create table tblmusteri(
MusteriID int identity(1,1) not null primary key,
MusteriAdi nvarchar(15) not null,
MusteriSoyadi nvarchar(15) not null,
MusteriTelNo decimal(15) not null,
MusteriAdres nvarchar(20) not null,
SiparisID int not null foreign key references tblSiparis(SiparisID)
)