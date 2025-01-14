program UASPrakPBD;

uses
  Forms,
  Login in 'Login.pas' {FLogin},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  ProfileSiswa in 'ProfileSiswa.pas' {FProfileSiswa},
  ProfileGuru in 'ProfileGuru.pas' {FProfileGuru},
  Admin in 'Admin.pas' {FAdmin},
  PresensiGuru in 'PresensiGuru.pas' {FPresensiGuru},
  PresensiSiswa in 'PresensiSiswa.pas' {Form2},
  Account in 'Account.pas' {FEdAccount};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFProfileSiswa, FProfileSiswa);
  Application.CreateForm(TFProfileGuru, FProfileGuru);
  Application.CreateForm(TFAdmin, FAdmin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPresensiGuru, FPresensiGuru);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFEdAccount, FEdAccount);
  Application.Run;
end.
