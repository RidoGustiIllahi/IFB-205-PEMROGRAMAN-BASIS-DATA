unit PresensiSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbLookUpPresensi: TDBLookupComboBox;
    edIdKelas: TEdit;
    edKelas: TEdit;
    edTanggal: TEdit;
    edWaktu: TEdit;
    btnBatalHadir: TBitBtn;
    btnHadir: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
