unit DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Menus, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    ZConn: TZConnection;
    zqAccount: TZQuery;
    dsAccount: TDataSource;
    zqSiswa: TZQuery;
    dsSiswa: TDataSource;
    zqGuru: TZQuery;
    dsGuru: TDataSource;
    zqJadwalSw: TZQuery;
    dsJadwalSw: TDataSource;
    zqJadwalGr: TZQuery;
    dsJadwalGr: TDataSource;
    zqHadirSw: TZQuery;
    dsHadirSw: TDataSource;
    zqHadirGr: TZQuery;
    dsHadirGr: TDataSource;
    popUpSw: TPopupMenu;
    LoadFotoSw: TMenuItem;
    SavetoSw: TMenuItem;
    ClearFotoSw: TMenuItem;
    popUpGr: TPopupMenu;
    LoadFotoGr: TMenuItem;
    SavetoGr: TMenuItem;
    ClearFotoGr: TMenuItem;
    zqEdAccount: TZQuery;
    dsEdAccount: TDataSource;
    zqKelas: TZQuery;
    dsKelas: TDataSource;
    zqCekSw: TZQuery;
    dsCekSw: TDataSource;
    rptJadwalSw: TfrxReport;
    frxJadwalSw: TfrxDBDataset;
    rptHadirSw: TfrxReport;
    frxHadirSw: TfrxDBDataset;
    rptJadwalGr: TfrxReport;
    frxJadwalGr: TfrxDBDataset;
    rptHadirGr: TfrxReport;
    frxHadirGr: TfrxDBDataset;
    procedure LoadFotoSwClick(Sender: TObject);
    procedure SavetoSwClick(Sender: TObject);
    procedure ClearFotoSwClick(Sender: TObject);

    procedure LoadFotoGrClick(Sender: TObject);
    procedure SavetoGrClick(Sender: TObject);
    procedure ClearFotoGrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses myLib_Blob;

{$R *.dfm}

procedure TDM.LoadFotoSwClick(Sender: TObject);
begin
  Blob_FromFileImage(zqSiswa.FieldByName('Foto'));
end;

procedure TDM.SavetoSwClick(Sender: TObject);
begin
  Blob_ToFileImage(zqSiswa.FieldByName('Foto'));
end;

procedure TDM.ClearFotoSwClick(Sender: TObject);
begin
  Blob_Clear(zqSiswa.FieldByName('Foto'), 'Kosongkan Foto ?')
end;


procedure TDM.LoadFotoGrClick(Sender: TObject);
begin
 Blob_FromFileImage(zqGuru.FieldByName('Foto'));
end;

procedure TDM.SavetoGrClick(Sender: TObject);
begin
  Blob_ToFileImage(zqGuru.FieldByName('Foto'));
end;

procedure TDM.ClearFotoGrClick(Sender: TObject);
begin
  Blob_Clear(zqGuru.FieldByName('Foto'), 'Kosongkan Foto ?')
end;

end.
