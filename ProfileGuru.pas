unit ProfileGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, EDBImage, DBCtrls, Buttons, Grids, DBGrids,
  SMDBGrid;

type
  TFProfileGuru = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;

    dbLookUpHadir: TDBLookupComboBox;

    dbGridProfile: TSMDBGrid;
    dgGridJadwal: TSMDBGrid;
    dbGridHadir: TSMDBGrid;

    btnAccount: TBitBtn;
    btnFilter: TBitBtn;
    btnPrintHadir: TBitBtn;
    btnLogout: TBitBtn;
    btnEditProfile: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnJadwal: TBitBtn;
    btnTmbhHadir: TBitBtn;
    btnSimpanProfile: TBitBtn;

    EDBImage1: TEDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfileGuru: TFProfileGuru;

implementation

uses DataModule, Login;

{$R *.dfm}

end.
