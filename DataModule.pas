unit DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
