{******************************************************************************}
{  ModernAppDemo by Carlo Barazzetta                                           }
{  A full example of an HighDPI - VCL Themed enabled application               }
{  See how to select the application Theme using VCLThemeSelector Form         }
{                                                                              }
{       Copyright (c) 2020, 2021 (Ethea S.r.l.)                                }
{       Author: Carlo Barazzetta                                               }
{       https://github.com/EtheaDev/VCLThemeSelector                           }
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}
program ModernAppDemo;

uses
  Vcl.Forms,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  MidasLib,
  uSplitView in '..\..\Source\uSplitView.pas' {FormMain},
  EditForm in '..\..\Source\EditForm.pas' {FmEdit},
  FVCLThemeSelector in '..\..\..\Source\FVCLThemeSelector.pas' {VCLThemeSelectorForm},
  DImageCollections in '..\..\Source\DImageCollections.pas' {ImageCollectionDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Modern App and ThemeSelector Demo with HighDPI support - Copyright (c) Ethea S.r.l.';
  Application.CreateForm(TImageCollectionDataModule, ImageCollectionDataModule);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
