unit ProfileSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SMDBCtrl, Buttons, Grids, DBGrids, SMDBGrid,
  DBCtrls, EDBImage;

type
  TFProfileSiswa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;

    dbGridProfile: TSMDBGrid;
    dgGridJadwal: TSMDBGrid;
    dbGridHadir: TSMDBGrid;

    dbLookUpHadir: TDBLookupComboBox;
    dbLookUpPresensi: TDBLookupComboBox;

    btnAccount: TBitBtn;
    btnFilter: TBitBtn;
    btnNilai: TBitBtn;
    btnPrintHadir: TBitBtn;
    btnLogout: TBitBtn;
    btnEditProfile: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnJadwal: TBitBtn;
    btnTmbhHadir: TBitBtn;
    btnBatalHadir: TBitBtn;
    btnHadir: TBitBtn;
    btnSimpanProfile: TBitBtn;

    EDBImage1: TEDBImage;

    Panel1: TPanel;

    edIdKelas: TEdit;
    edKelas: TEdit;
    edTanggal: TEdit;
    edWaktu: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfileSiswa: TFProfileSiswa;

implementation

uses DataModule, Login;

{$R *.dfm}

procedure TFProfileSiswa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FLogin.Close;
end;

end.
